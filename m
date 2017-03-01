X-GM-THRID: 6392615528012185600
X-Received: by 10.36.6.15 with SMTP id 15mr1477792itv.12.1488396788685;
        Wed, 01 Mar 2017 11:33:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.24.130 with SMTP id 124ls1478433ioy.54.gmail; Wed, 01 Mar
 2017 11:33:07 -0800 (PST)
X-Received: by 10.99.2.19 with SMTP id 19mr3202243pgc.113.1488396787834;
        Wed, 01 Mar 2017 11:33:07 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id u12si971314pfd.3.2017.03.01.11.33.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 11:33:07 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id b5so2005066pfa.0
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Mar 2017 11:33:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=HStKqFNr/fqpD2jSjrdiz4d2fa7LBiLWZvM12iA4lAo=;
        b=GUD53/ZMviJpnIpNpYBBpaaXcDXRNgjzCFJagoJWMJSVHrgQjZYJ7xIsmu41XgJvkA
         7n+M2RjGVvt8OTG8GRgY6AQ0giU/tOuBW2BxqJcGCVHEDS1e6jRLhHt613naMU5MlKVk
         P7BTe2MqNt34wnFEyln3LkkRywTMFnZ8+sTMDKVd9irJEYf22xJMN03cVbXBrcN3UWn+
         5uQZ+xXKMa+S1RnGp6Y2qfUB3ZzeMeGtmuHs3bW7BnnFX6rIkxcKlTHVfpkHE4dfps1B
         fsoWIqr7Z6XXmHS50Hf8J8HvO+JUe+J9DEytnWSn0QXmWGnqorQKtgOrPm/BJHju66eo
         6pKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=HStKqFNr/fqpD2jSjrdiz4d2fa7LBiLWZvM12iA4lAo=;
        b=rT8BzsAD93zhsTZ/pW5JChhnxe+g3aIYC43dE28Yqk1HLPC3lgbzF728Yw+bxrI04E
         X/BTlefOkxlhls8vtEcIRJ8l/tXeSaq6TR2Xtu7olQfGGUCirixSvx9ZJOTtv/dBdIsu
         HkJAxexIdzCUgh0dBMhJupRxbd0prB9rnj/APLvvs/bPJzGoWwAFb82LWYxXggFto5sJ
         Z7JUB3/sb5IHZWKJT/rY5pAZhVG+laWhmcwe23K/ZoWKDgIQg8HZkIsZMnSTyeZvjfaX
         RUMFxZH4fqwldqWlcJl1FCT5dfJ1xMRrPqVzw25oyTz7ShNseMZndIXWTZgjJfw6CWPg
         Z2pw==
X-Gm-Message-State: AMke39m1j4A85jWEq6jdTmzOEgCfejjnXoaKh9rdoYyNewSine7gG03RsREXmXeaP8L6/A==
X-Received: by 10.84.209.204 with SMTP id y70mr12377984plh.69.1488396787096;
        Wed, 01 Mar 2017 11:33:07 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id z4sm12196803pge.49.2017.03.01.11.33.05
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 01 Mar 2017 11:33:05 -0800 (PST)
Date: Thu, 2 Mar 2017 01:03:03 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: Chris Brannon <chris@the-brannons.com>, Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	speakup@linux-speakup.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: speakup:indentation should use tabs
Message-ID: <20170301193303.GA31351@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Indentation should always use tabs and never spaces.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/speakup/i18n.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
index 1a3e34880ac1..11f1418b4006 100644
--- a/drivers/staging/speakup/i18n.c
+++ b/drivers/staging/speakup/i18n.c
@@ -552,7 +552,7 @@ ssize_t spk_msg_set(enum msg_index_t index, char *text, size_t length)
 			if (index >= MSG_FORMATTED_START &&
 			    index <= MSG_FORMATTED_END &&
 			    !fmt_validate(speakup_default_msgs[index],
-			                  newstr)) {
+					  newstr)) {
 				kfree(newstr);
 				return -EINVAL;
 			}
-- 
2.11.0


