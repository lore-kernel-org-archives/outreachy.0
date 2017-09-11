X-GM-THRID: 6463828664038457344
X-Received: by 10.28.23.200 with SMTP id 191mr915884wmx.25.1505147893560;
        Mon, 11 Sep 2017 09:38:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.175.78 with SMTP id y75ls1294897wme.15.gmail; Mon, 11 Sep
 2017 09:38:12 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDoU2HT18gBsHnLRaFslZsryjQ2H1DgY8iL5dkDDPTrTEIYADxvXGp3XbcbuBQGGkkyk2wa
X-Received: by 10.28.109.193 with SMTP id b62mr869522wmi.16.1505147892470;
        Mon, 11 Sep 2017 09:38:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505147892; cv=none;
        d=google.com; s=arc-20160816;
        b=izq/iavGNo5JyZSeEdZVxdgQzGvgDDoMQpvLM72qz3dv6BbI/BKaU77eTR03afN/Qv
         cYG0x2iz2CvUboUanImnGHv47PuEyI7lsHj1z6/28+LIms/P5pWxG2t54VwD1HqA1EgN
         QhDbSPFk4mXBi7qxoEi9AyQarEwh5zZAdMZM/Zme1EitwA2VcuJd1WwcT5nJHF7WVLwg
         zFgmYkCfM3Fd8xA7hu7150YIyUDJhiVJ+R2qQdbd91YzE2X20i4ZdiZ7Oq+PibxxnShC
         8j6tWAHcmUG+M15boUj8/suOLccoXGU0DYEUffA1TEQoTVM3YyVFegty752yHONZTTti
         zjAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=r0bJWITawr2RkI5XjotpblNB67JJzZi2Lw+Fo9MkvVs=;
        b=sCIyOWmrQXYIp23f32vDWIoDTHcZ8O9WUmbd1YCUXUOb+nWYIFaezZRXqlI5E08MXw
         WS1Z0duCzoDkemekH2cVrV8eP0MCZ42tD3e60t/ECQauhLKj9Ga14hcEnNMiAKf6y7FS
         igZmoKOezF+oavkJYngN4jewDiQueiGvxutrAO0/MZE/4RkPmEl151jTQXMlOjIwKoU1
         lXPLgdTjLdrIzLv6bJxPK2ZN0CQXzGAZ9W0XK4+B63bzENm8yAr6LnD0yeE9E8HCy5MZ
         f2VZav5a1xN/zTOhYeJ+0P57AuUth3pU6vfIeAHMsMbcYlDEfoh3Jwig67Zon+Z9bG3P
         9QfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id d82si444837wmd.1.2017.09.11.09.38.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 09:38:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [12.145.98.253])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 08EF2266;
	Mon, 11 Sep 2017 16:38:11 +0000 (UTC)
Date: Mon, 11 Sep 2017 09:38:10 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: rtl8723bs: Change coding style to (foo *bar)
Message-ID: <20170911163810.GA3423@kroah.com>
References: <1504977216-12686-1-git-send-email-harshasharmaiitr@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1504977216-12686-1-git-send-email-harshasharmaiitr@gmail.com>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Sat, Sep 09, 2017 at 10:43:36PM +0530, Harsha Sharma wrote:
> This coding style (foo *bar) is more common for the kernel code.
> Change foo* bar to foo *bar.
> Change foo * bar to foo *bar.
> Change (foo*) to (foo *).
> 
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> ---
> Change in v2:
>  -Updated log message and subject

Does not apply to my tree :(

