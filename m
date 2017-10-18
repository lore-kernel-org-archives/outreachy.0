X-GM-THRID: 6473412482924806144
X-Received: by 10.28.127.10 with SMTP id a10mr234453wmd.0.1508334200136;
        Wed, 18 Oct 2017 06:43:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.168.14 with SMTP id r14ls842901wme.3.canary-gmail; Wed, 18
 Oct 2017 06:43:19 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+StbCPPDLiV/sN/oYZNpxhUA6C3c8Vy5dB/2PYRkCuSfDXYFy7fMgns/ycoj17WKcqmsqFe
X-Received: by 10.28.107.65 with SMTP id g62mr802032wmc.32.1508334199284;
        Wed, 18 Oct 2017 06:43:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508334199; cv=none;
        d=google.com; s=arc-20160816;
        b=OeREKrvedoVKL6IeLm9tF44RI9FYcSf/Zyz+qwRy4ZQRyydFa8XNLAgG7z0b3Hp8+L
         XibFDYoglJu1btYx1sNsAfV4xiaSb3TqSFYQeQaXpdzA3FXWAP80SKFkCFQ+zh67Qb1v
         AOzsGrQAfUVXtcR2zAV5oYVSZFKlA2Qs0d9bvNutmPIQKCqg3OJ6TV5LTLqm84Q7as6W
         pR1N0cGZEng13QWdNvJq1Po4Xytw/04vIamgyimhA3IqYRKy5w45RgGKL3ZrZBBWDry3
         xNrzN1Q4g2CJQCwUj2SNwb9gqO0qNW9a48AHGz2IUUUNXpsLAnE+K2+epe4p3e1TbnHN
         escg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=42k1FQ+71FZWyz6IfwZGgqxVc3UaKbVtLgYpvrcoyxA=;
        b=f5ba56nmKYQnHh5zmMFDzGKV65QWTjEynBRDL8m3Y4HIjLFlKLpdFY+vUu/SQJ2Vsb
         fI4tE+Udm65rxnKcbh3MFO2fTnQuJPwb4KwaAjEMKDgDtlZUibuFBtTOov0af7cUWtXV
         0yt4aVo8pGhCXyHmDHsA0mHQjbtTULjCN1SuEepFvL4DnFIOwb8jT3MIKLFOe8/Wfp7O
         5WpFGSSwi5QRmZc3dFZdFHlzjXL0zwSUO5ZJYvFurp6F3KhzN3b281xnBg1fuRNWGyR6
         tV6R9Iovw5YdcSHfJBl36wCcIGKhRW5fRVRi444WNQoxK+Ir0fb5GyKnqtaYfIYc9NZm
         jK3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id p70si583843wma.1.2017.10.18.06.43.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 06:43:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 9D7EEACC;
	Wed, 18 Oct 2017 13:43:17 +0000 (UTC)
Date: Wed, 18 Oct 2017 15:43:26 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Aastha Gupta <aastha.gupta4104@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 7/7] staging: rtl8188eu: add spaces around '|'
Message-ID: <20171018134326.GB9535@kroah.com>
References: <1507208787-18008-1-git-send-email-aastha.gupta4104@gmail.com>
 <1507208787-18008-8-git-send-email-aastha.gupta4104@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1507208787-18008-8-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)

On Thu, Oct 05, 2017 at 06:36:27PM +0530, Aastha Gupta wrote:
> Fixes 'use spaces around '|' ' as reported by checkpatch.pl
> 
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
>  drivers/staging/rtl8188eu/include/ieee80211.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

This patch no longer applies as I had to drop the previous one :(

