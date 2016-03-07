X-GM-THRID: 6257131864000036864
X-Received: by 10.31.160.209 with SMTP id j200mr18112715vke.6.1457382132588;
        Mon, 07 Mar 2016 12:22:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.134.215 with SMTP id q84ls9739ioi.13.gmail; Mon, 07 Mar
 2016 12:22:12 -0800 (PST)
X-Received: by 10.107.167.148 with SMTP id q142mr18557157ioe.17.1457382132268;
        Mon, 07 Mar 2016 12:22:12 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id ff2si3435043pad.2.2016.03.07.12.22.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Mar 2016 12:22:12 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id fl4so8280119pad.2
        for <outreachy-kernel@googlegroups.com>; Mon, 07 Mar 2016 12:22:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=x9vv3WNaBGA1U2pNONx2S8l7sLxgRdagGJWNq1U/79c=;
        b=zw3yplgCvGAqno3kIUzZfRB8fdyWJA2kGCEjQaez902gUXR8MSRjRaVDF95uRkj6BF
         UmvwCca+Ku5KMqPtf7jIZ3YNHfQ0GLM06XyF+FV6ZVvs4C1ohVlD3MrMs4JYceNdkK+t
         vEJvYSVy/smVtQR7+FN3omh/Shh5/ntbCkPNpbR/+SHNmgOs6Ez7CuJsbblqEX/RjkUg
         NMutIDYqnyWGACecVvqegjwVe35OfoxgFe5p3T5vajmouz0AYRyUqbWP2+9fFrrVm3qU
         YhyqDZ0dOMevZRa2p/0pHBP96N0+XKTkgCgMAsdZdiYzR4FpSlk92OU04yu5zxnelmzd
         fyrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=x9vv3WNaBGA1U2pNONx2S8l7sLxgRdagGJWNq1U/79c=;
        b=TA9CohZROqX6zsqna4mox/qyIwVWJOAWd4R4vhl63TLdxZI9CdqC385LCRw7DxpUIu
         pewiZbuihUIluIi9+3WScX70UbEorZ3MJ7c3pLFyFrdxUrtiVhELBdy+27z6f9rV9lJY
         92oHIUuRYWyU3ocDvmntosfFwDupVwUdJ8sswgaLKDXp3DD6iGfdG+7X3dwC/4zxwilN
         7zQ3rm6iDb/TviF8Md/McZK7SVMZ4cYaaRLEDHkP3qkB89JJxYcn5j+ybj9m2arfxHcA
         nyBlsgT0qVAbiL8VgdzVJXYt8/mSIM1g28fzgGpELBrjI+HwXw12MdVtQfDT47R6U8tD
         zd3w==
X-Gm-Message-State: AD7BkJIvJwo8U8bfA9xsXTG/eEKJYyPwtdAti7mJ6jW0NrACojJDnU1XGf23NS5ci+JCEA==
X-Received: by 10.66.234.166 with SMTP id uf6mr36159813pac.122.1457382132111;
        Mon, 07 Mar 2016 12:22:12 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.136])
        by smtp.gmail.com with ESMTPSA id q85sm25934743pfq.81.2016.03.07.12.22.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 07 Mar 2016 12:22:11 -0800 (PST)
Date: Mon, 7 Mar 2016 17:52:37 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] Staging: wlan-ng: Do not print message if kzalloc()
 failed.
Message-ID: <ab1fdc272217ab1b9778b678e1e279ed6813a163.1457351977.git.bankarsandhya512@gmail.com>
References: <cover.1457351977.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457351977.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Do not print message if kzalloc() failed.
kzalloc() has its own messages. So no need to add extra one. 

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/wlan-ng/prism2sta.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index 131223a..e245732 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -1886,7 +1886,6 @@ static wlandevice_t *create_wlan(void)
 	hw = kzalloc(sizeof(hfa384x_t), GFP_KERNEL);
 
 	if (!wlandev || !hw) {
-		pr_err("%s: Memory allocation failure.\n", dev_info);
 		kfree(wlandev);
 		kfree(hw);
 		return NULL;
-- 
1.8.3.4


