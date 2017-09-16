X-GM-THRID: 6466169958600540160
X-Received: by 10.200.50.44 with SMTP id x41mr11708147qta.57.1505522513445;
        Fri, 15 Sep 2017 17:41:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.142.211 with SMTP id q202ls7970978iod.11.gmail; Fri, 15
 Sep 2017 17:41:52 -0700 (PDT)
X-Received: by 10.107.14.201 with SMTP id 192mr4176286ioo.14.1505522512485;
        Fri, 15 Sep 2017 17:41:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505522512; cv=none;
        d=google.com; s=arc-20160816;
        b=icgD8p/+70QigYg3cxT0dlVh7q46odF95PT+h8TEdKgaY1MKYRO0+mhDzeiOkecZqg
         eS1mRoCZzlwkal1SfpBvToe6dPHlqf8gWrNp7jZVpfecl+u7X+ZsNSKtWCDkAfmM3vXT
         lLotb1J4I8KiY1Uw4BYmJd85WIk8xEjjTbQtgclMov2gJ6JL/z0qtC0VPHgPTXgq+fq1
         52FyJBLwx/n3R46CnRXJyOFkjgf98fwqIaoWTCMvRmt/Spzo6KI6Yw0pwbvrUiZTgPaB
         HlAu2bCr3VeRrqf6ullTkW9btOa+LtOjz+xEJC74xRIinyCBZXwQw1UjwAM+e+Q3M+qR
         ZlDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=3iEO4IyYJjcdunx5r4jS+ciyH/XD9Sd+ZFLJqlyn8+U=;
        b=oAOIb9gOnFbKzKHvkLPEu4ZaMb1/VjCxVeOzCCIwvMm5d+bcwZsZLq10L2Fre8k9lg
         s5XBtmCLM6kM+8CDVsRjAa2HETzA/c6Ok2FnP5GeFfUE/Ny7LPeHYSsmchOiHcSmRDP2
         ibdpL2H6TAzsXl4Xqfu4PmkeUlKt0Y3K8dp1GpqpMXRKIK+O3haTDkZZcv0I22hZXHwo
         rah2eADsHInWCRTKIXZZYEPsRlC01T4oaMX7N3f4+F2VDwAXw9BZeX7YUMCQS3E3DTtV
         Fj1D6XtkZ8xKqPSgv08LrlSxZpxwmxNpxUNQrIeY7tMnJR1mMI87RK2Tx9NLkk0oxqCH
         A6cw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m5wlygbm;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id y18si228572pfj.18.2017.09.15.17.41.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 17:41:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m5wlygbm;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id d8so2075852pgt.3
        for <outreachy-kernel@googlegroups.com>; Fri, 15 Sep 2017 17:41:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=3iEO4IyYJjcdunx5r4jS+ciyH/XD9Sd+ZFLJqlyn8+U=;
        b=m5wlygbmv+4HhBrj2bv6EHlMEKvkMFpFXnn9qSucpdZ+HWPcUkSf4YMze5QtuSIAuQ
         fj3YRWw23W5O2SjCSORXytealnKDTS617Ra9nmbKDMaJz5VMK0X4ia25nM+2UZlk1Tqh
         OMxtPNu1SgR2SP2zFGLAMare9/wliEWkahmfCoQfVbyJqy38whjuNLt8PY24f7YkkMsC
         OhRZAxbyb86zVyvWVEsDdUUxjeCG8NWYWfmtFgwsuBbEatQWHzF3+gV2Yjzgi+/BRmov
         mBSTV/TtnsMgm7VSN0ISrMOj5CUy0KZUiE9zxVxawWYZPmu6Jg7Xis41uluFnPdz1JaD
         pIMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=3iEO4IyYJjcdunx5r4jS+ciyH/XD9Sd+ZFLJqlyn8+U=;
        b=SQtzYb/ttDHRLKCaA6S44snvfs61JUYAfwu6rJ6Tm5DOheeDhG12nIImj+ANG/nlPq
         CwAM6LDx6UZHtft2+gZnCF7cm8bULO1jL0Cd8SdwICnT7kny7r2Z81kjJvF25Gzc2PRd
         dELs9Rkxc5IGTUJ6GA1Q2gcnwPbc9AKPCGOegaKqyibxeOqUOAS//IiSzKx90gkXCHR1
         xW2tJfkraMgt5QZA2PpNZxDOXpHs+8Dev9BRwl/scaWT0kw1Rn+WP7mJW8IDUB8xxs8b
         UMVJNSbX7c9jJ4NgYS4sGHsgo7OQnA6g2+BouyMzvH1q2ZHU7TPv8UALrL19/yF+Zi79
         YKAw==
X-Gm-Message-State: AHPjjUiGZ3xArtymF0QHR2IcE/MXukh3kwOKgtumVkbYA+6NfMs8L6Y+
	cz3HEBtANMGFd1W09kE=
X-Google-Smtp-Source: ADKCNb62li/eitnw5ycS/xeuWrazaLcmGSYd8E9obbUGlh3W8U/RIRSZVs4mw4ehjvimM1kOxqwhHA==
X-Received: by 10.84.218.141 with SMTP id r13mr28498628pli.271.1505522511974;
        Fri, 15 Sep 2017 17:41:51 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id n2sm4059461pgq.30.2017.09.15.17.41.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 17:41:51 -0700 (PDT)
Date: Fri, 15 Sep 2017 18:41:48 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	lustre-devel@lists.lustre.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] staging: lustre: lnet: Replace list_for_each with
 list_for_each_entry
Message-ID: <20170916004148.GA25693@Haneen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace use of the combination of list_for_each and list_entry
with list_for_each_entry to simplify the code and remove variables
that are used only in list_for_each.
Issue found and corrected using Coccinelle script:

@r@
expression head, member, e;
type T1, T2, T3;
iterator name list_for_each, list_for_each_entry;
identifier pos, var;
@@

-T1 *pos;
...when!=pos=e;

-list_for_each(pos, head)
+list_for_each_entry(var, head, member)
{
...when!=pos=e;
   when!=T3 *var;
-var = list_entry(pos, T2, member);
...when!=pos=e;
}
...when!=pos=e;

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/lustre/lnet/lnet/router.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/lustre/lnet/lnet/router.c b/drivers/staging/lustre/lnet/lnet/router.c
index 3df101b..b8eba33 100644
--- a/drivers/staging/lustre/lnet/lnet/router.c
+++ b/drivers/staging/lustre/lnet/lnet/router.c
@@ -222,15 +222,12 @@ struct lnet_remotenet *
 lnet_find_net_locked(__u32 net)
 {
 	struct lnet_remotenet *rnet;
-	struct list_head *tmp;
 	struct list_head *rn_list;
 
 	LASSERT(!the_lnet.ln_shutdown);
 
 	rn_list = lnet_net2rnethash(net);
-	list_for_each(tmp, rn_list) {
-		rnet = list_entry(tmp, struct lnet_remotenet, lrn_list);
-
+	list_for_each_entry(rnet, rn_list, lrn_list) {
 		if (rnet->lrn_net == net)
 			return rnet;
 	}
@@ -243,7 +240,6 @@ static void lnet_shuffle_seed(void)
 	__u32 lnd_type, seed[2];
 	struct timespec64 ts;
 	struct lnet_ni *ni;
-	struct list_head *tmp;
 
 	if (seeded)
 		return;
@@ -254,8 +250,7 @@ static void lnet_shuffle_seed(void)
 	 * Nodes with small feet have little entropy
 	 * the NID for this node gives the most entropy in the low bits
 	 */
-	list_for_each(tmp, &the_lnet.ln_nis) {
-		ni = list_entry(tmp, struct lnet_ni, ni_list);
+	list_for_each_entry(ni, &the_lnet.ln_nis, ni_list) {
 		lnd_type = LNET_NETTYP(LNET_NIDNET(ni->ni_nid));
 
 		if (lnd_type != LOLND)
-- 
2.7.4


