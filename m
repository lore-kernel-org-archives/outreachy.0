X-GM-THRID: 6665628449675149312
X-Received: by 2002:ab0:3011:: with SMTP id f17mr8845410ual.25.1551972299864;
        Thu, 07 Mar 2019 07:24:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:e895:: with SMTP id x21ls1436097vsn.1.gmail; Thu, 07 Mar
 2019 07:24:59 -0800 (PST)
X-Google-Smtp-Source: APXvYqwxqreEuMq1byU7UZ3DtX0/vfU95uqc0VN9L57dzi4vOUhTJ6CKKcSTEPBDrHvwFJK4hZQf
X-Received: by 2002:a67:ed96:: with SMTP id d22mr9043709vsp.7.1551972299088;
        Thu, 07 Mar 2019 07:24:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551972299; cv=none;
        d=google.com; s=arc-20160816;
        b=VtepEb1YleEMG5yTplomfdiI1hFrEKaqKPH/pizC1YoUs795huhjKnflT3bmWrFrDD
         aEjVLQJT8oU2nx9rrmy2GO/gSXTKEFLIedDzIrvYgGxSiWHqXV6St954k4t2JOJotQOs
         hgUk7i3uNgJaGFWzYjfgvORuxf8ZxKG4OT+9lrN201dRFqLhqdOwmJ47XZZt83NU7usR
         96kRUI/YhafdRXbITXxpsEHN/boLgkaF4cKXLqWFgJ3oUxtVRXtHjkhgr49ZFqAE/X31
         +NlyKWH7TzkJyF3K3jwgm8rwruEdhPGfjI7dmBfv2cJRHCnc6u3etx28EICgtgb3KZP2
         YJ0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=gyTPx7Ou2T3mHVVrPLVXkLYko+n2EwLoloITH1TTDRU=;
        b=j4ldXVJWUThkCbAte0fQIN4jsOJlh3ie/6XnI+byL/MDtIGAJevmIMLJ2excyDLDf0
         oDeiIsjl2tMXypYg2ou1xjRmwpKZAjm6kNdk4dsxYs4S4LWxjcyN/okbEWvsPB6LEa7m
         64/VQTmrdXDfZjWTlEQtZxTtSTfni+4DXUedbwY3++/5KS/E/7XSc5ly4e+Cbz06Uwl+
         jl9rNNosTz/4dCwLNXP8THC+RXGqQGa7+gSeHghMjD8Z+tkB7zu/+hwUI+XZTCRnjVih
         ulMrOrxWJgaswk3e8SdpKK5jlw1xl7cwlSTelzWjrK/ZvNwle0zx4sGqphdijmF8rsoJ
         AtxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=szfQgw6m;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id q85si224179vke.5.2019.03.07.07.24.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 07:24:59 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=szfQgw6m;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x244.google.com with SMTP id w66so13183619oia.4
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Mar 2019 07:24:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=gyTPx7Ou2T3mHVVrPLVXkLYko+n2EwLoloITH1TTDRU=;
        b=szfQgw6mB1HVRPjryoWwWs0CGOGpjMlWA9lEbFq/Cll75F0arNVSH3BogTjxftnsLo
         4Gzibaom4t8JIbLmsLT64As01pwsXYvsDz6lrVOmpLU7iOFWIpDDBcAYyKcCzsrZG1YE
         +SIfhB166nx6upMz8sehXoR1S6jybTRTBuVBXwX0XHsueUc/uD2p3HnmZZyexYzkAtXa
         IcnNnmnS41NTLobEFxyNV34Ypeir20z0Hq3pgzCIwGZtYOuxPqZXA4Qp3U87Y9jBRz5+
         aRf322sGLUTbm4sDiYSm/haSmeiqxmvJ12+I3dWBzjkZZnVK5MD7sso0gK64KQI5TfiB
         cqNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=gyTPx7Ou2T3mHVVrPLVXkLYko+n2EwLoloITH1TTDRU=;
        b=TMjYcWSnLH2VIocOcH8zXJNktKMTIiAVpfWOv+60E1LJ9nbnLpZWhhviE9KUVLpx5M
         v67HliN+9XFrA3GoutigkU+UUNIlKQiDXKicMb3bbmzPvymAC7qzBoVKGZRkkLur2h7G
         WC1uQeAnM45AmclqxjCmtTwS0vczU6COP96Z8MOuIn1tpfbx+nXJrMMFY7BHV5GV/+Mw
         t4niczoBFvV5ilZebwaC7PpOBJXjFPYsS4Gs7wdRrWXalLSnqypdrKzbkWT7RZ7sI3Kw
         cucfgot9dRLAgkIOJPm8OBAow4oz9vkMXtWNdmAhiTQffcE84+8u5pQlwYqOC2dLeD16
         +gJA==
X-Gm-Message-State: APjAAAVcEbr+5k25PKfaEwUMINHSQs3vwU2c1dXYt6dP6iaHxUPpoG8m
	OVRGmSkbm0FjdszosthXfZ1uL4DZyP0=
X-Received: by 2002:aca:4c10:: with SMTP id z16mr5146817oia.53.1551972298517;
        Thu, 07 Mar 2019 07:24:58 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id i8sm1890351oib.44.2019.03.07.07.24.57
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 07 Mar 2019 07:24:57 -0800 (PST)
Date: Thu, 7 Mar 2019 09:24:55 -0600
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: vt6655: Remove an unused
 function
Message-ID: <20190307152453.GA20888@madhuleo>
References: <20190307124236.20430-1-madhumithabiw@gmail.com>
 <alpine.DEB.2.20.1903071420470.5181@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1903071420470.5181@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Thu, Mar 07, 2019 at 02:21:40PM +0100, Julia Lawall wrote:
> 
> 
> On Thu, 7 Mar 2019, Madhumitha Prabakaran wrote:
> 
> > Remove an unused function to improve codebase.
> >
> > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > ---
> >  drivers/staging/vt6655/mac.h | 2 --
> >  1 file changed, 2 deletions(-)
> >
> > diff --git a/drivers/staging/vt6655/mac.h b/drivers/staging/vt6655/mac.h
> > index 99de843b4551..59538ac09fc5 100644
> > --- a/drivers/staging/vt6655/mac.h
> > +++ b/drivers/staging/vt6655/mac.h
> > @@ -887,8 +887,6 @@ void MACvSetShortRetryLimit(struct vnt_private *priv,
> >  			    unsigned char byRetryLimit);
> >
> >  void MACvSetLongRetryLimit(struct vnt_private *priv, unsigned char byRetryLimit);
> > -void MACvGetLongRetryLimit(struct vnt_private *priv,
> > -			   unsigned char *pbyRetryLimit);
> 
> This is the prototype of a function.  Is there a definition somewhere?  If
> so, it would be good to remove the definition at the same time.
> 
> julia
> 
> >
> >  void MACvSetLoopbackMode(struct vnt_private *priv, unsigned char byLoopbackMode);
> >
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190307124236.20430-1-madhumithabiw%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

There is no function definition in the code base. Do you I need to edit the commit log and resend it.

?


