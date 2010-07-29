// Copyright (c) 2010 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#include "chrome/browser/ssl/ssl_host_state.h"

#include "base/logging.h"

namespace {

static const char kDot = '.';

static bool IsIntranetHost(const std::string& host) {
  const size_t dot = host.find(kDot);
  return dot == std::string::npos || dot == host.length() - 1;
}

}  // namespace

SSLHostState::SSLHostState() {
}

SSLHostState::~SSLHostState() {
}

void SSLHostState::HostRanInsecureContent(const std::string& host, int pid) {
  DCHECK(CalledOnValidThread());
  ran_insecure_content_hosts_.insert(BrokenHostEntry(host, pid));
}

bool SSLHostState::DidHostRunInsecureContent(const std::string& host,
                                             int pid) const {
  DCHECK(CalledOnValidThread());

  // CAs issue certificates for intranet hosts to everyone.  Therefore, we
  // always treat intranet hosts as having run insecure content.
  if (IsIntranetHost(host))
    return true;

  return !!ran_insecure_content_hosts_.count(BrokenHostEntry(host, pid));
}

void SSLHostState::DenyCertForHost(net::X509Certificate* cert,
                                   const std::string& host) {
  DCHECK(CalledOnValidThread());

  cert_policy_for_host_[host].Deny(cert);
}

void SSLHostState::AllowCertForHost(net::X509Certificate* cert,
                                    const std::string& host) {
  DCHECK(CalledOnValidThread());

  cert_policy_for_host_[host].Allow(cert);
}

net::CertPolicy::Judgment SSLHostState::QueryPolicy(
    net::X509Certificate* cert, const std::string& host) {
  DCHECK(CalledOnValidThread());

  return cert_policy_for_host_[host].Check(cert);
}
