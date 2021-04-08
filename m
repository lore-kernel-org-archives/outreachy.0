X-GM-THRID: 6948690474275176448
X-Received: by 2002:ac8:1093:: with SMTP id a19mr6417910qtj.365.1617871043922;
        Thu, 08 Apr 2021 01:37:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:4455:: with SMTP id w21ls2802279qkp.7.gmail; Thu,
 08 Apr 2021 01:37:23 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzRL5oYMSEto7Kc5/LyUBTfc8Q92Tee/nfVFqIADJXP6Ef70ys3JJmM3LjhvemJFRIB2axJ
X-Received: by 2002:a05:620a:1133:: with SMTP id p19mr7530872qkk.340.1617871043132;
        Thu, 08 Apr 2021 01:37:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617871043; cv=none;
        d=google.com; s=arc-20160816;
        b=gCyWH4AyRma5o5Z4T5IGPMipo5Ud3wUhIBg6B//UpwbevkbYySD9APippIpHB3yXhM
         LxP2/xzQfy3Gw2OnvSwqrXWqtP+frE+EnEadTqCsCK8loHKNwhUUxwSCu3JcfGPHzmF+
         /o3WfSYzWFoZiqVLlo22Y4GNhFP5AktotO6F8s1u69En/Kz5yTGVGWt++Paqt8PGG5Qf
         e9ARk8fiffn5vWE+b4KyaHCW+0o4Sh3hBGHbJjYrWYeNYpC9iWxgQH72CEoM7ugRfNcX
         nXJGsNy7QXbfyOd5IcD4I5QK8NlE1FlfcILNBOkW1Ymp/bGQ25w1zkx/1CbJ94Td48yF
         GRhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=gTRJUY1qblXJejgz2sywV+BWhoT7K1wnHBT96srPwq8=;
        b=CxM133tbqL3uUej5y7AOvLdhZ9w5ufq0vuSgOhLFQv2A6IUsns2zAl5Jy3Fy9jQ3n6
         yap7eOzhn7kuyeYqGvlqkVHmgEaV/sreyWZgyj0a+8xggxQ0+xPHky5nqx0Sd8N9uSvn
         AapeOf1Ama9t7G2HgiqMQ+5VMoSAivezBK//lJrK1yemBUrDUjbmDXV10oC8VoODXnQl
         jT6man+iLOUvgsTznw5dg9FmVtPn2JwVT+1qVZ18yA9ZJGHRKm6c8rgm92w7JAmgCbS8
         aVMGxG/TurY8Z842Vg70qeDHEjJW2K6ndg+d9a+EA2llFd3OsX+ZgnDHIhHXNevo5Qn6
         uW9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=V6GxBF5j;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k1si4178984qtg.2.2021.04.08.01.37.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Apr 2021 01:37:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=V6GxBF5j;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id C681A61004;
	Thu,  8 Apr 2021 08:37:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1617871042;
	bh=gTRJUY1qblXJejgz2sywV+BWhoT7K1wnHBT96srPwq8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V6GxBF5jSNseCmswWdYSFXiLQuH+aG/A37oCuSEAh7CmY2C6N1PC84DplxdY3O1ui
	 NStz0KauMpzYzjj+qboizZE4QjEjFtgeKAg2sQTmsaEDPk4JoebI/ogPE/QYCw5vov
	 OUZS4GRsv3lRdgaukMhB/Mf4Up4YrjfZyukaYt/w=
Date: Thu, 8 Apr 2021 10:37:19 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mitali Borkar <mitaliborkar810@gmail.com>
Cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [PATCH] staging: rtl8712: removed unnecessary blank line
Message-ID: <YG7Avz5/iaSynCwX@kroah.com>
References: <YG61JYTdl1HQKcGj@kali>
 <YG64Kvun5Xxy4lOL@kroah.com>
 <CAHWmKdgm0bjRBasEjcWdtDPX1DPON6RSmNXMTp+NQfYrYHmcXg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHWmKdgm0bjRBasEjcWdtDPX1DPON6RSmNXMTp+NQfYrYHmcXg@mail.gmail.com>

A: http://en.wikipedia.org/wiki/Top_post
Q: Were do I find info about this thing called top-posting?
A: Because it messes up the order in which people normally read text.
Q: Why is top-posting such a bad thing?
A: Top-posting.
Q: What is the most annoying thing in e-mail?

A: No.
Q: Should I include quotations after my reply?

http://daringfireball.net/2007/07/on_top

On Thu, Apr 08, 2021 at 01:36:07PM +0530, Mitali Borkar wrote:
> Okay, should I rename the patch?

I can't take it as-is, so you need to change something :)

> I removed a line and matched alignment, so should I rename this
> appropriately?

Only do one logical thing per patch, so if this is 2 logical things,
then you need 2 patches, right?

thanks,

greg k-h

