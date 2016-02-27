X-GM-THRID: 6256120108487278592
X-Received: by 10.112.200.68 with SMTP id jq4mr844397lbc.3.1456616566485;
        Sat, 27 Feb 2016 15:42:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.132.74 with SMTP id g71ls369620lfd.5.gmail; Sat, 27 Feb
 2016 15:42:45 -0800 (PST)
X-Received: by 10.112.158.138 with SMTP id wu10mr873252lbb.11.1456616565930;
        Sat, 27 Feb 2016 15:42:45 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id h126si246618wme.0.2016.02.27.15.42.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 15:42:45 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id n186so4347914wmn.0
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 15:42:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=bjIiZsEm4GR+O/rRlZefUCDQX0znSGbANzUYvv6WtFg=;
        b=j6pIkjLsjtFf3CRfCLV8cMm8WTb4PugLMw+aOVm0qdiCYfDfKki679Eknpyjr1KQ8K
         IiUtdA0Tp3aYwtb4bRaL2LLPQRg3NmO9zuAEziooF0F3szUs5kIqwC99qWSgLFRXLfeL
         HznzcsAiATTqdJT4vOReeTpULK9r6+1Vwehz0kwV1R5uOIds15G2f7Xrj/ohhW4jcf3a
         IvmPuBmLL67U/aL770LviX+Clhenj6REC0nDrKor7rKVquwsJrkf6DOBQuE+xy8hP8ba
         NN3jSrLjOnBDX+XpnpMfqWj9+9ObgWdX45IL2VfwVMD8X8jPLh2KMWb5+sP8MvwFdo4C
         sQ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=bjIiZsEm4GR+O/rRlZefUCDQX0znSGbANzUYvv6WtFg=;
        b=XWRUIQUunWf3WqN8smLlyI+l7fYsQfPRdn5CY50oOHcSQWEfGforyfsSdVXueTvrrY
         i4uWblWicOcH5te/pdJqY76z/23vQIiVIMZJO3FjUloUG5w2DHN8ph28Hnq0/G+/oUN8
         Q5plWPxVvTalNgRSXmXgM8TR6gvg8gWtUiSKxQsa5Qck9ve63WnuEJ4nJJK9raukjHEh
         2Glul7uY/ihaUk9x6ZyTjKMeF2hCVmxntRXxehaBrD2aWgmVBUBp9VlpfTMAfYQdSkx5
         pbmGlANkhBUqXwwXKcED1Lszwj5tXxDBYC2gOJgS7mrsnRZUHMlXoN8kiHzdGOffAK82
         FoVg==
X-Gm-Message-State: AD7BkJKHMgNnLDdFafLX3hqfi3tY0oYFfl+Itwhjhw5u53mTESG+dvQ+fK8k83e7Nc+qiA==
X-Received: by 10.28.73.136 with SMTP id w130mr4903090wma.36.1456616565786;
        Sat, 27 Feb 2016 15:42:45 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id i2sm18728193wje.22.2016.02.27.15.42.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 27 Feb 2016 15:42:45 -0800 (PST)
Date: Sun, 28 Feb 2016 00:42:43 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 03/10] staging: octeon: Insert blank line after struct
 declaration
Message-ID: <8171ee24d73b9acb095b2969b16a4f2e242bf9d0.1456615452.git.nevola@gmail.com>
References: <cover.1456615452.git.nevola@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456615452.git.nevola@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Blank line is inserted after a struct declaration. Checkpatch detected
these issues.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
 drivers/staging/octeon/ethernet.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index 8935556..b49e55a 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -546,6 +546,7 @@ static const struct net_device_ops cvm_oct_npi_netdev_ops = {
 	.ndo_poll_controller	= cvm_oct_poll_controller,
 #endif
 };
+
 static const struct net_device_ops cvm_oct_xaui_netdev_ops = {
 	.ndo_init		= cvm_oct_common_init,
 	.ndo_uninit		= cvm_oct_common_uninit,
@@ -561,6 +562,7 @@ static const struct net_device_ops cvm_oct_xaui_netdev_ops = {
 	.ndo_poll_controller	= cvm_oct_poll_controller,
 #endif
 };
+
 static const struct net_device_ops cvm_oct_sgmii_netdev_ops = {
 	.ndo_init		= cvm_oct_sgmii_init,
 	.ndo_uninit		= cvm_oct_common_uninit,
@@ -576,6 +578,7 @@ static const struct net_device_ops cvm_oct_sgmii_netdev_ops = {
 	.ndo_poll_controller	= cvm_oct_poll_controller,
 #endif
 };
+
 static const struct net_device_ops cvm_oct_spi_netdev_ops = {
 	.ndo_init		= cvm_oct_spi_init,
 	.ndo_uninit		= cvm_oct_spi_uninit,
@@ -589,6 +592,7 @@ static const struct net_device_ops cvm_oct_spi_netdev_ops = {
 	.ndo_poll_controller	= cvm_oct_poll_controller,
 #endif
 };
+
 static const struct net_device_ops cvm_oct_rgmii_netdev_ops = {
 	.ndo_init		= cvm_oct_common_init,
 	.ndo_uninit		= cvm_oct_common_uninit,
@@ -604,6 +608,7 @@ static const struct net_device_ops cvm_oct_rgmii_netdev_ops = {
 	.ndo_poll_controller	= cvm_oct_poll_controller,
 #endif
 };
+
 static const struct net_device_ops cvm_oct_pow_netdev_ops = {
 	.ndo_init		= cvm_oct_common_init,
 	.ndo_start_xmit		= cvm_oct_xmit_pow,
-- 
2.7.0


