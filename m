X-GM-THRID: 6340040067935895552
X-Received: by 10.66.10.169 with SMTP id j9mr336594pab.142.1476155609844;
        Mon, 10 Oct 2016 20:13:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.56.29 with SMTP id i29ls535174otc.12.gmail; Mon, 10 Oct
 2016 20:13:29 -0700 (PDT)
X-Received: by 10.157.9.195 with SMTP id 3mr428829otz.135.1476155609410;
        Mon, 10 Oct 2016 20:13:29 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x244.google.com (mail-vk0-x244.google.com. [2607:f8b0:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id p131si207743vkf.1.2016.10.10.20.13.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 20:13:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) client-ip=2607:f8b0:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x244.google.com with SMTP id b186so375819vkb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 10 Oct 2016 20:13:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=1Z8Zg2V1JjDf4HLWEBhmUOdUIMfXqC2qghKFNHIy+NQ=;
        b=Fxiiz0QxCXJJhbT+APG5iZXpvn+iW57fuy0b3cg7idiG2vdGiwkyuASY9/VlHRrUBg
         8O96lyI4oLmPD0t9D2F4FFMlNWud3B5HGiB0yB8n8B6we9gqa7qeaaQzxbsqifEX+rwI
         AqUYB/sDviH02Y7r4VaT4/2C0/b2IEXR11S+kDzG2qZaM2eRPmNwqgRZcasCODtXi1f5
         FZBvd50XhormNMyVlXa3pCJOiTsDi7+gARoYTQuH/xkLR/hGXjL1IgOR38QrjhD7AJTl
         hmGLA2PAeiBIIt7a+Dgl7TThC0W4ywHKdYtazYEDTBnhGd28sXWlN+8xdJL49kLUPStA
         HjbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=1Z8Zg2V1JjDf4HLWEBhmUOdUIMfXqC2qghKFNHIy+NQ=;
        b=C6rhZ9CY6o6mxN+zNS2lfa8wCRZloXNsagXSWEPrDIcoKbvj9HXIIlvQ+JNxlscFlK
         TrXhnUi17BWfdfsAunSycnximHlp3nIe/yagWIDcuxxjyTBJJmERJ+EMyf86BcCqOs9p
         V5WcjAzCjKYlHUKfFKYrzkEdrpDeZlApbFTc+dpsU+mhybd1hUUDe7P787afsGen3Rrc
         WqNhN2iPDB4e13ZBNMWcM0ki9W+hTfoFg6JCGtgyTHfiX2xBjxBAj4digMuZDD+HeuGS
         +bR9fEOYrq8WH42DibgU6yu4u+UEICyrTSz4buWPwnxr8iwpkdbV5BeUUsTU59Tq+UdG
         Kttg==
X-Gm-Message-State: AA6/9Rn6BuxH0364pWKnaTiUqMCnkLRDSjZGHiIV/aYHlYsWrXWzjmMv/ibYCqjMLHQiQw==
X-Received: by 10.31.92.216 with SMTP id q207mr1370763vkb.147.1476155609255;
        Mon, 10 Oct 2016 20:13:29 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id m194sm589212vke.7.2016.10.10.20.13.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 20:13:28 -0700 (PDT)
Date: Tue, 11 Oct 2016 00:13:24 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: vaibhav.sr@gmail.com, mgreer@animalcreek.com, johan@kernel.org,
	elder@kernel.org, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 4/7] staging: greybus: Remove useless return statement.
Message-ID: <20161011031324.GA21978@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch warning:

WARNING: void function return statements are not generally useful

This return statement is immediately followed by the closing bracket
of the function and serves no purpose.

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---
 drivers/staging/greybus/audio_codec.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/greybus/audio_codec.c b/drivers/staging/greybus/audio_codec.c
index 8a0744b..0be7991 100644
--- a/drivers/staging/greybus/audio_codec.c
+++ b/drivers/staging/greybus/audio_codec.c
@@ -405,7 +405,6 @@ static void gbcodec_shutdown(struct snd_pcm_substream *substream,
 	params->state = GBAUDIO_CODEC_SHUTDOWN;
 	mutex_unlock(&codec->lock);
 	pm_relax(dai->dev);
-	return;
 }
 
 static int gbcodec_hw_params(struct snd_pcm_substream *substream,
-- 
2.7.4


