X-GM-THRID: 6395896934008094720
X-Received: by 10.13.192.193 with SMTP id b184mr8187849ywd.27.1489160810211;
        Fri, 10 Mar 2017 07:46:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.61.119 with SMTP id a110ls9598165otc.29.gmail; Fri, 10 Mar
 2017 07:46:49 -0800 (PST)
X-Received: by 10.129.108.20 with SMTP id h20mr8767917ywc.69.1489160809867;
        Fri, 10 Mar 2017 07:46:49 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id u12si1824458pfd.3.2017.03.10.07.46.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 07:46:49 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id g2so6192806pge.2
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 07:46:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=UUMLavsfIrDZjX6jfvnA3871fRlz1uOY7YZlTkpMmy8=;
        b=sN8f0L9QsK1pLPCDbHqIK6X3LHJ0/Ss7YVeoIStux1iOwBt/2ulDm93filWZDWMmI3
         9QUYKFPMLrc6ruwxK43DWY0GmV3ujjs/dQgGXNIZslmQn+5hrPhZwvU3N3Qh32YQWr/o
         5CHDgA/jnh2BqLgF8KcFvtsXJb4BbphBaLMT9OoiRXhyZ8XfHp0gRMoo2W3BvaPjmD2d
         Mup7q3SC2XB/8ae1FkBUhoVwv/iXrHFb+NCg7lnKP73+dfpLsQpOyksu+EOsFCF2cSwy
         NLVlHy5Aup1TMdzfRylHyoc+b8I1EGUthUzWxT4GSQG3sDtiY0AI7ijOnIqq36jt+3Mb
         H/Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=UUMLavsfIrDZjX6jfvnA3871fRlz1uOY7YZlTkpMmy8=;
        b=TlaQRSoa6OAntH1GxebAXb+Ig+ERDJFeMV3Rjf2wRX6/fnLcc3RF30nkBaowUmr5xr
         rM6U5bDXur4ILbn9phvlX1KP4ByLuoUFw0YlYBpdcrev5xAJqM5gsPHHaTAXc2B8lIv2
         VbDe5ZDvdFtd/lKQV5TdwMHTDFxge6b0Y6tgZ26wBRufh70iAXgL8Q+vqkcyV5uJbLVM
         tlLB+nvLqAvSVKqiUVw/nLz16+lVccBaDWvPl5IBgzVGIlMfvAkdyYR0cioyINelVeCy
         ZqS5wuXbE4C/H26O5dP8ez/pUkNDs0p4P4SoDwxKgtZrUJ//LbRJuGlQGMJYAcspOas0
         14jw==
X-Gm-Message-State: AMke39kPJbk28NnpQ+iMohwMlW8d2PkJYIITMQD4XZAnulHAywkhqZ6z18PJMIeMjqtqHQ==
X-Received: by 10.98.105.134 with SMTP id e128mr21891342pfc.19.1489160809606;
        Fri, 10 Mar 2017 07:46:49 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id t6sm19640598pgt.8.2017.03.10.07.46.47
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 07:46:48 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 2/2] staging: dvb-frontends: removed code in comments.
Date: Fri, 10 Mar 2017 21:16:32 +0530
Message-Id: <20170310154632.4445-3-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170310154632.4445-1-arushisinghal19971997@gmail.com>
References: <20170310154632.4445-1-arushisinghal19971997@gmail.com>

Commenting Code Is a Bad Idea.
Comments are their to explain the code and how the code achieves its
goal and as codes in the comments  does not explain what the code is
doing so there is no use of commenting them.
So in this patch codes in the comments are removed.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/media/dvb-frontends/drxk_hard.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/media/dvb-frontends/drxk_hard.c b/drivers/media/dvb-frontends/drxk_hard.c
index 7e1bbbaad625..2fe493768003 100644
--- a/drivers/media/dvb-frontends/drxk_hard.c
+++ b/drivers/media/dvb-frontends/drxk_hard.c
@@ -5283,7 +5283,6 @@ static int qam_set_symbolrate(struct drxk_state *state)
 	/* Select & calculate correct IQM rate */
 	adc_frequency = (state->m_sys_clock_freq * 1000) / 3;
 	ratesel = 0;
-	/* printk(KERN_DEBUG "drxk: SR %d\n", state->props.symbol_rate); */
 	if (state->props.symbol_rate <= 1188750)
 		ratesel = 3;
 	else if (state->props.symbol_rate <= 2377500)
-- 
2.11.0


