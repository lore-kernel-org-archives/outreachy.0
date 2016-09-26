X-GM-THRID: 6334708873542238208
X-Received: by 10.66.194.129 with SMTP id hw1mr5794401pac.92.1474914376035;
        Mon, 26 Sep 2016 11:26:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.33.74 with SMTP id l10ls13921975otd.44.gmail; Mon, 26 Sep
 2016 11:26:15 -0700 (PDT)
X-Received: by 10.237.37.246 with SMTP id y51mr5997422qtc.62.1474914375590;
        Mon, 26 Sep 2016 11:26:15 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id si10si5079216pab.1.2016.09.26.11.26.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Sep 2016 11:26:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 21so9495847pfy.1
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Sep 2016 11:26:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=uAodOxh6DpBVOreW8kOGWTL2B7uqvuQXyaUmP3Z384M=;
        b=EpJJZwB5TEx6DFhZT+yBzNBzu+A/cJywm8yb23q3rG2yOAv8RBqVvWSJHj7Osd2bZ0
         chW+3xUELjJmuNW7I65FAoLAbnY6Aqs+3DaTdlBU71Zi7nmA+nY/eCudx3WBJqjbKxGE
         RkpRe43PVNyQW8bBTBINI2x1rj2YdTZsE0/v8IkjYNjL35neWxGQUvZzXmMJKpKtyzzq
         4ez+OKoQ7/p+hXkPFjYNJ9qUGXKzgNjGFh00VtqhBPapTBldoJZS0HiSvNWBen4wXzcI
         LKyQM7qWXU8z5zX7N0bhHZpiJSPTBUOS1K7Q8K11fURL2YAoVu5GZ6NK76hytfQoKz1S
         DfEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=uAodOxh6DpBVOreW8kOGWTL2B7uqvuQXyaUmP3Z384M=;
        b=brrsQb4LhStZCdeA7ct/o8gceUohP0U4F9iz0/OVKCf/IcXLHUl22dw5beVlo1jsou
         qONTL7fmtejHhdN+HRXI7kkzZYRjnsmLPDrZda0XpJtH/o/llhTed/8OFLXHVhl6q9Me
         +7Q8+tAu0Ny878YpF21zsfg5j/LVdinA6nX0cTCopAfk/Ue2t4AsLkaXw3Qel8PknDWr
         o3K6YB4JovbV4c70jef17q3gz8I5rDCpRp4i9gg/LMup7rxAbqV9I87gYXAJwj6j2KMN
         yhCU+N8l+Z7N5jy/JCDe7+kSMUCv7ArzQ69gkoUYY4n7zG1MRutPbi3LY50+shME052M
         mDLQ==
X-Gm-Message-State: AE9vXwPn4+s153aiuPlDSbF9y5iqivCg7dt79Tn1tPe1IlsvGLS8LCM4axW5wLcFflp+hA==
X-Received: by 10.98.28.146 with SMTP id c140mr41171269pfc.158.1474914375405;
        Mon, 26 Sep 2016 11:26:15 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id n77sm32762949pfj.31.2016.09.26.11.26.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Sep 2016 11:26:14 -0700 (PDT)
Date: Mon, 26 Sep 2016 23:56:10 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rithvik Patibandla <rithvikp98@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 2/2] staging: vt6656: Make return type changes of functions
Message-ID: <9a6403af18f7bd45499f6745ab61d6dd4aa7dea2.1474912143.git.namrataashettar@gmail.com>
References: <cover.1474912143.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474912143.git.namrataashettar@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Change return type of functions to reflect changes in code.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/vt6656/card.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vt6656/card.h b/drivers/staging/vt6656/card.h
index c2cde7e..84270c1 100644
--- a/drivers/staging/vt6656/card.h
+++ b/drivers/staging/vt6656/card.h
@@ -41,14 +41,14 @@ void vnt_update_ifs(struct vnt_private *);
 void vnt_update_top_rates(struct vnt_private *);
 int vnt_ofdm_min_rate(struct vnt_private *);
 void vnt_adjust_tsf(struct vnt_private *, u8, u64, u64);
-bool vnt_get_current_tsf(struct vnt_private *, u64 *);
+void vnt_get_current_tsf(struct vnt_private *, u64 *);
 bool vnt_clear_current_tsf(struct vnt_private *);
 void vnt_reset_next_tbtt(struct vnt_private *, u16);
 void vnt_update_next_tbtt(struct vnt_private *, u64, u16);
 u64 vnt_get_next_tbtt(u64, u16);
 u64 vnt_get_tsf_offset(u8 byRxRate, u64 qwTSF1, u64 qwTSF2);
-int vnt_radio_power_off(struct vnt_private *);
-int vnt_radio_power_on(struct vnt_private *);
+void vnt_radio_power_off(struct vnt_private *);
+void vnt_radio_power_on(struct vnt_private *);
 u8 vnt_get_pkt_type(struct vnt_private *);
 void vnt_set_bss_mode(struct vnt_private *);
 
-- 
2.7.4


