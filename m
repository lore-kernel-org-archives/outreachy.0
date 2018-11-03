X-GM-THRID: 6619601914535346176
X-Received: by 2002:a1c:7305:: with SMTP id d5-v6mr82422wmb.1.1541246230161;
        Sat, 03 Nov 2018 04:57:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:2802:: with SMTP id o2-v6ls723122wmo.24.canary-gmail;
 Sat, 03 Nov 2018 04:57:09 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cyO4DJvq4opUypwQx+7qbiyVHMk/3fs1Vw1SNIvit+mStO81iQQolKFMqyqz1DDf1kfuX1
X-Received: by 2002:a1c:9c01:: with SMTP id f1-v6mr82547wme.10.1541246229188;
        Sat, 03 Nov 2018 04:57:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541246229; cv=pass;
        d=google.com; s=arc-20160816;
        b=RLaqt5cXaZqkNIgQTWC36lNZ4N4ac87THFN6KsUUMnSQguGDPmmgZEmn9XkiUCiOBc
         d7NkEQX9fnM/3n4uojFLu7GpxtIIjt1J9CJtMNsr7/ODO3khnSL9rCS8U0YLykoyW3lg
         hspFmqfnEr5qX0DetQf7v+mi0IIUvhv3UGZeVUux+ttfgPUFy7Ap+vrTFsHwfkRndrvd
         OAZiilYEfm2kvoYr7KC/cRBdxaksxW87ycJ4Ccz6uun7RQQAyU+KKB8+tguq29dklKMc
         PId0YMN/fgOzLrWuU35tD49WGvgMKsNcfL4SwRaiwD0WFz2LlybRm3SBu7OQIu6lEyxH
         anjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=xFm+aLKDO5eMd73A1zyGoSZ2LdrQSgUh921v9igh1+A=;
        b=xcRgG8P3DqeqpzH3nb1LEzQzKXQtkM2KY07K/3h/8bS4RmLOSyerqsgBtdF7J4Z7qQ
         DIm6XvJg8ZKqGtF4t0OCETvP/AJsV+XxNmORyZhDqbe3i5Su6s6vaY8+qrcnILxKPMT+
         goHMbALwJWLrIz9kdIjzRW+96GUWn5VTcO6M1+Z0djVc0W6WOS6vLn/46BL4rwuOlWCl
         VIuTwdRE4KT+YJt+uz+9bYlCTIoOL1G6TPus/U4xi1GEgl/FY6u8nDAYBKipS66kerZj
         DawMSHisPLziEAfNfc8ltNyvaO3tiE1cx6vuusyD8hB4mfaFvZCZj4S1E0Mwed8SR4ig
         443A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=D3duuQwm;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id 204-v6si149170wmw.3.2018.11.03.04.57.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Nov 2018 04:57:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=D3duuQwm;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541246226; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=ZcU7mFLkjr4Bsue+HCkHvhlkZ1/BruE4NFrI7+MSVS59QUejvfeliUBDHy7cdiu+C9VnB1OESNDUS2D74mrqIviLlohCCDqgg/FwiEIe3rrIpiPd+ykP8sWVb/1r6QSUgtG5j7j2zoh85f0XdywzELHSWun8yWCUVeyIOBcxOkc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541246226; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=xFm+aLKDO5eMd73A1zyGoSZ2LdrQSgUh921v9igh1+A=; 
	b=ODUTow6t8lSluhYhjVtDZS0TjjWiJpDz+QnVSjJ5ksEZhWNrBmF1yIt8OVYJSUHCtnpVgjqzwbylDCS9b2UoiQaeGSZf+MOb/EJuGQsI+v6/SjFfH2Xw6PCZe8x6wKX1TqA4ahYIgrPDqPambG8makZ4H/9y62D/GO/69UgIvmo=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541246226;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=1037; bh=xFm+aLKDO5eMd73A1zyGoSZ2LdrQSgUh921v9igh1+A=;
	b=D3duuQwmCSuoWfAy1OYgPgWL7tM4M2TXcGgPDWoEObzOffExqlWjBOnuYKkamXnn
	4zqYCVQob1MWeGZFsItqtZD7n63IdjABLgQPwClbTYTTeyBTSe+u00mT3I8apUcgbmD
	iku78yvtu+Im1AnOa4WUUNaSMP2MwAP03FhDuBpU=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541246225838540.9654936470869; Sat, 3 Nov 2018 12:57:05 +0100 (CET)
Date: Sat, 3 Nov 2018 11:57:04 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v4 5/5] staging: greybus: align arguments with parentheses
Message-ID: <49ea0a08d52c2bf07128d57b1e8f41f0d6e5232b.1541246060.git.code@wizofe.uk>
References: <cover.1541246060.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541246060.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Align arguments with the right side of the open left parentheses.
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/control.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/control.h b/drivers/staging/greybus/control.h
index ebb7a2ee17dc..5a45d55349a1 100644
--- a/drivers/staging/greybus/control.h
+++ b/drivers/staging/greybus/control.h
@@ -41,7 +41,7 @@ int gb_control_get_bundle_versions(struct gb_control *control);
 int gb_control_connected_operation(struct gb_control *control, u16 cport_id);
 int gb_control_disconnected_operation(struct gb_control *control, u16 cport_id);
 int gb_control_disconnecting_operation(struct gb_control *control,
-					u16 cport_id);
+				       u16 cport_id);
 int gb_control_mode_switch_operation(struct gb_control *control);
 void gb_control_mode_switch_prepare(struct gb_control *control);
 void gb_control_mode_switch_complete(struct gb_control *control);
-- 
2.19.1


-- 
ta
ioannis


