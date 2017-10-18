X-GM-THRID: 6478086724175003648
X-Received: by 10.176.19.70 with SMTP id h6mr7938390uae.94.1508297594968;
        Tue, 17 Oct 2017 20:33:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.176.27.91 with SMTP id n27ls842454uai.5.gmail; Tue, 17 Oct
 2017 20:33:14 -0700 (PDT)
X-Received: by 10.31.149.18 with SMTP id x18mr7525270vkd.19.1508297594002;
        Tue, 17 Oct 2017 20:33:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508297593; cv=none;
        d=google.com; s=arc-20160816;
        b=0J7RfRrkBIaFiawdcxsyAKqARXAz/wy02x2b1At3NS2m6opHKtTwxx7LZg24rnXU83
         TN+9eRdZLaoJXr0+Sx6PpIJMLr4NaDN+I7JULyp0y2F7t8Rbi1NFXXydOES88scpLFrQ
         Mjbyr0CE2+pdacMepdDffGjz30+3TanYTKSaJpaxZHU0MN2o7Mkk7xmewEmAP30kDW24
         vjaUUNSXWKdC11o9M7Vu1JI4t+lskR4rUD3Lq9SIt3+mlhRpvmVWkOv77wSwfSxuUJgc
         PJ6Tb4xpx3aI7eOKHH8xTznElhQkt3pYSHwHiBwqK5JrAvyNO0xpV/oaJPOVYuXNKH4c
         VtnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=Mi4Qjpxz3aleUZw6Jqmj48bbuO2CTsHSoxmCBgL+f8E=;
        b=kNFGBLn7QKZCSHE9NRl5AXcZ4+UbiWej6ZhCG5aTgQ4MbaObCIl6IHn/bb7bRnmlW8
         1gzdlhkfoSNlg5JVvPOKFUQWztbNEUth7WGMgBgIWThOk0AYsW0S6jjRUkqduYIOi1Y4
         w94Qz2TPSJ1TgJ9M7lr/EkN1pKu5ky3SV7bQ+IGTwiDTe2pMMGNy7M5kdUck5NYWFUfd
         OfdQSE9wcPQQYuw5fiOUNhhRfTAD76eWMQ5UrFP+E1BXmSAF3qNa8+IA8A71dbdnXOU8
         4269bCb5czyWn8Vap+wkSsrI9EzUnmDXHlTrFbRIVoPqE7XOpOv5/3rbGE5l45Fu+Dpi
         dp+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=ZTNpi/88;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c05::231 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-vk0-x231.google.com (mail-vk0-x231.google.com. [2607:f8b0:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id q64si541226vkg.3.2017.10.17.20.33.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 20:33:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c05::231 as permitted sender) client-ip=2607:f8b0:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=ZTNpi/88;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c05::231 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-vk0-x231.google.com with SMTP id g69so2461756vke.5
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 20:33:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Mi4Qjpxz3aleUZw6Jqmj48bbuO2CTsHSoxmCBgL+f8E=;
        b=ZTNpi/88fM6+XKDLtC0jCrII4Uc95n+t2U5D0nqmmw33yNwDRoJBABKvHYYqdSpTuT
         6V2Ff6TBUyrzh8mTJEZeDCCF8FtaYhEaNTI98AJeryTcibMtZou03bVj6RsxQtKgh9do
         7Fs0uooJ3rAhWfEXCIwUEygvdfBoXQL38TWqEGurO8eFt7xq/7gEgSoNzogj9J2A3vf2
         ivDwoQhuu3X7XK672Qxak14bLQtRCli/mFiJybX79EQFiD8WuxIVqOedlmw2RXvLVmRw
         c7gOAgI6T8hSi7Nnah+gtQZXdn7r3w7GTuouJUlW4mdPGvlzzkOcOGxX4fi9IbqfvDS5
         1XKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Mi4Qjpxz3aleUZw6Jqmj48bbuO2CTsHSoxmCBgL+f8E=;
        b=G2CYIhfhlYfL3itYknm3KlM2O9EouTZnadFmrXhuRLAAK6Xrk5m3AlV5srMfQERQkE
         +4+R2LAIt4obV/yf/iIVdq7GZdsvCcOTU1gf8Efm59SE1RA00Cde1LhQAs1VN9gPsznu
         c6TwNCBkYrn3//8i7hW6QVhMg3u9wh/ufunZgMjAAW5XtzGCxp/p3egQga5cAyOIgUp1
         GYbVGPzReaoab0Ss7TpjKrQTbL25Gk8Xw43m9gwCxb8DA8MOE1B1MrAfl6KGraeZTD3P
         ctkSe5bJ0tNZ8a48srS8Nyu+3xKE5WF8FitDmIP46PaSTQHzyzXMtG6vZeJzLvMnRgqG
         oaJg==
X-Gm-Message-State: AMCzsaV52lw5Is7pyb/6DjEnpyzpqX1DvAbl/EHVY5gPIH3aQ7FyWMhK
	kTKkJiDWEfswMJ1noiC+ITG//ZJ8
X-Google-Smtp-Source: ABhQp+QdavItl6UgnGrcWN0G8uLBjAKsjx8DgRsvhDGZo5HGW7HMO+0lJkgB1KGNwuY/iNkOxcjfow==
X-Received: by 10.31.168.66 with SMTP id r63mr4357857vke.32.1508297593517;
        Tue, 17 Oct 2017 20:33:13 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from ubuntu-server-1604 ([152.206.125.129])
        by smtp.gmail.com with ESMTPSA id h15sm2240569vke.39.2017.10.17.20.33.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 17 Oct 2017 20:33:13 -0700 (PDT)
Date: Tue, 17 Oct 2017 23:33:06 -0400
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: pablo@netfilter.org, Julia.Lawall@lip6.fr
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 2/4] staging: rtlwifi: rtl8822be: Use __func__ instead of
 hardcoded name
Message-ID: <7ce624d59500b35c025e847e29f1ee32be778f21.1508295702.git.frank@generalsoftwareinc.com>
References: <cover.1508295702.git.frank@generalsoftwareinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1508295702.git.frank@generalsoftwareinc.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Switch hardcoded function name with a reference to __func__ making
the code more maintenable and addressing the checkpatch warning:

WARNING: Prefer using '"%s...", __func__' to using 'rtl8822be_sc_mapping', this function's name, in a string
+                                       "rtl8822be_sc_mapping: Not Correct Primary40MHz Setting\n");

Credits to checkpatch.

Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---
 drivers/staging/rtlwifi/rtl8822be/trx.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtlwifi/rtl8822be/trx.c b/drivers/staging/rtlwifi/rtl8822be/trx.c
index 38f80e4..54f65f3 100644
--- a/drivers/staging/rtlwifi/rtl8822be/trx.c
+++ b/drivers/staging/rtlwifi/rtl8822be/trx.c
@@ -571,9 +571,9 @@ static u8 rtl8822be_sc_mapping(struct ieee80211_hw *hw,
 				sc_setting_of_desc =
 					VHT_DATA_SC_20_UPPERST_OF_80MHZ;
 			else
-				RT_TRACE(
-					rtlpriv, COMP_SEND, DBG_LOUD,
-					"rtl8822be_sc_mapping: Not Correct Primary40MHz Setting\n");
+				RT_TRACE(rtlpriv, COMP_SEND, DBG_LOUD,
+					 "%s: Not Correct Primary40MHz Setting\n",
+					 __func__);
 		}
 	} else if (rtlphy->current_chan_bw == HT_CHANNEL_WIDTH_20_40) {
 		if (ptcb_desc->packet_bw == HT_CHANNEL_WIDTH_20_40) {
-- 
2.7.4


