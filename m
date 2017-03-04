X-GM-THRID: 6393358325939961856
X-Received: by 10.129.50.12 with SMTP id y12mr3491028ywy.111.1488638930045;
        Sat, 04 Mar 2017 06:48:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.23.133 with SMTP id 127ls1431925ith.16.canary-gmail; Sat,
 04 Mar 2017 06:48:49 -0800 (PST)
X-Received: by 10.99.50.2 with SMTP id y2mr3195034pgy.173.1488638929463;
        Sat, 04 Mar 2017 06:48:49 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id h79si551819pfh.2.2017.03.04.06.48.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 06:48:49 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id s67so15463811pgb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 06:48:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=8R0ydK4H3oaby9nFBVEPbIX6/f4CDf0CD/0Js2gOeus=;
        b=oaihxKgWoaqxfbC7pjV73L/2Tzv8LpOzzi4o/V0qwu+NW5nRETBQ/wSFgW5kM9+c+a
         Lt9nG7m29Ra20MysosWk3QIYsZ+HX6KhTnGMq2yLjnkn3zlty5h68r3QDxxvQmSHzZrW
         cQivBQoSzpLy7aKzuj2bCcrxquvYmJTgr8eufVVD/Ubiw3BvL3VCR62Nz+LEd8Q14+G6
         E5+99e4jL6zE2VmqrmdjvU4oqSka++DU1CRhRDyMbZVr44oCrap4baTSy9zXJCp8jSUz
         Z31Kee/uMM76NSErz1+D+/PRTggVgM4LtPVUnbKDOE1d3Rb7yZTBFavO5mu7zaZNGwzZ
         KSvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=8R0ydK4H3oaby9nFBVEPbIX6/f4CDf0CD/0Js2gOeus=;
        b=SYTfsS8JT7PtbyRnaW7dAN6z7CJpOJpNfvcXcSFQwT6VDkhqzt+uNkT1BNXzgpIZ/K
         G0T7F9lLhgot0q0l2PM74W5NSzQXplkrsUsfFhAFsU3i1AOLDao+jTlSOhDnpUUTGEKQ
         OzKXMZxwZiZqCKdoUkfwZqKQX5hXMoIF7YPZIb9QP1gMyDL1tkEZ/0U8YuPywt9E5IcV
         fFOwfl+TATIPAj4B33D7AbGjw7JqTJabjI9L3k3UmKBxQl7TeeGWWR/+h45YjYqCfr/T
         aAflW1rVzOx0vLf2/8/M3oNSc6zkacdMehL3qwOJ1F7s1HxeTplynjbUFFDQuhYoZD/o
         V0VA==
X-Gm-Message-State: AMke39mR0owAHeF6t/jvaN/B5kN96aD+peq2mnxQ8T1k6PZxVDtWht1WhPP1h44qyQa4rw==
X-Received: by 10.84.168.4 with SMTP id e4mr12351847plb.138.1488638929101;
        Sat, 04 Mar 2017 06:48:49 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.211.102.6])
        by smtp.gmail.com with ESMTPSA id u69sm9762035pfg.121.2017.03.04.06.48.48
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 06:48:48 -0800 (PST)
Message-ID: <58bad3d0.48df620a.5a37a.1915@mx.google.com>
X-Google-Original-Message-ID: <20170304144845.GA4540@<rvarsha016@gmail.com>>
Date: Sat, 4 Mar 2017 20:18:45 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 8/9] staging: media: atomisp: Fixed typo.
References: <cover.1488636852.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488636852.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Correct the spelling of initialize. This patch fixes the checkpatch
issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v2:
- Fixed commit message.

 .../atomisp/pci/atomisp2/css2400/isp/kernels/bnlm/ia_css_bnlm.host.c    | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/bnlm/ia_css_bnlm.host.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/bnlm/ia_css_bnlm.host.c
index 6184019..6d12e03 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/bnlm/ia_css_bnlm.host.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/bnlm/ia_css_bnlm.host.c
@@ -64,7 +64,7 @@ bnlm_lut_encode(struct bnlm_lut *lut, const int32_t *lut_thr, const int32_t *lut
 		assert(lut_thr[i] <= lut_thr[i+1]);
 	}
 
-	/* Intialize */
+	/* Initialize */
 	for (i = 0; i < total_blocks * block_size; i++) {
 		lut->thr[0][i] = 0;
 		lut->val[0][i] = 0;
-- 
2.9.3


