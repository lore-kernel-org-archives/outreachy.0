X-GM-THRID: 6663863789016842240
X-Received: by 2002:a9f:310a:: with SMTP id m10mr8533816uab.17.1551590474309;
        Sat, 02 Mar 2019 21:21:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:8442:: with SMTP id g63ls2840120vsd.5.gmail; Sat, 02 Mar
 2019 21:21:13 -0800 (PST)
X-Google-Smtp-Source: APXvYqzYbF/tVflO4Q5o/yXBEK40i1nvoE6DuCy9mUWwXc3zs/iV91c+PXvCvrRRmIiqagU6kPEx
X-Received: by 2002:a67:8a0a:: with SMTP id m10mr8504088vsd.42.1551590473720;
        Sat, 02 Mar 2019 21:21:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551590473; cv=none;
        d=google.com; s=arc-20160816;
        b=aMZMPRMdoYHh/7XQDdt0b0dH1iUVj6ps1vABXtskKZKzJGVxZMrJXxc5C2ly0tlIUL
         LI3MfdeCFCc2jAKY3fFtrMGK9FRzPyJxfivftM9mN3Bj9+bS3O7AuNqjulxqRrOi3snL
         DYTFSKmw00XIX3AV3MWN0N60xPTD+DI89ly4IcuhVd5vxWmuFOMjxARWuF+8qxejzOsp
         WKeB508Yv45YISEYSmB46QqBgSgRVTCckdp2f6SWKqG7uCzScfssudTfoGWBnf5S6eiK
         RBJkI60PfJZfWEg9lzGR2F3vkOZFwYjL4nKZuUpAteiP7WvmsFd3f8GuyCHRyjKUtd/c
         svKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=JDxJ7e18IAZ4VIh4fMbYTs/QVqiUfOdFMy9SbpBscOE=;
        b=X4TVGXYtQDjs4x/V53DJp+sDfYX8PYJg2u42ZJfPL4vfmQXRyN+CLbggHkSmnNdFwU
         ZVXL9lxVgkNaiWUa4+XuiizLCFt8TYgL5rhDwxcDFBVY+gwebb2HGeGMp1oD654kQs89
         ifMfZO7J80iwGYoNWPwrgCHxGKlZE2s8EfGHVye+n4AOjA/NPVC2qCjOxKXVH0Q5rXdQ
         seUShNXAJ74ftE/jxwSFn57t9Pe7gPDO0o0xgQtvv4S9JW4HUj74aWTpF7JUW2HHsa6M
         ce86/FPwB8HgVzUTp+VFCLUn3TiCaLjvYthMUmhLno7bC10aUCsEPNCAxQIip+v4nMZy
         8/uQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xm1LOXXs;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id b19si140862vkf.3.2019.03.02.21.21.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 21:21:13 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xm1LOXXs;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x341.google.com with SMTP id m1so1588497otf.5
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Mar 2019 21:21:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=JDxJ7e18IAZ4VIh4fMbYTs/QVqiUfOdFMy9SbpBscOE=;
        b=Xm1LOXXsvAzyQkeaCp+EIRYuqmCskGFuRjINQ+kadc8TimXTuQRWPMwmkp/wo0uHZr
         JU7iE4Z5gZAlgd/KfbLEBqBEaS4+r/A0Z1p7yPfh4nWeHywcHlHmxbpfcJTAZqPQwEDj
         Gz2rAL0ivgGSnyeTenuiS6MC0Poufjd6Lll06NagTQ5YBg53uRv/L7XutIVPoDGbzIEJ
         9y104tG3Sn2ITVuhP+iWtRdOBukCTKTCAMYp4dYot2He+cdHkCyYUmRRgDTyK/c/Y9Ww
         NefNtABXkpS5UUo5y+Iw9sz5/2gkJCiZMXALN3/IygKJdDxe2XRkE3sCnn6HE2ZwgujD
         u0bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=JDxJ7e18IAZ4VIh4fMbYTs/QVqiUfOdFMy9SbpBscOE=;
        b=DBlikPlzuKrn0ztR/eJ4mGXYoi2pl5pxhQZtoHimhI58VBwYxWjh2YPwm0NSzby1NP
         RUMYZ40MEJ9lE6wIxQxp5kjtSoONiqDK/Hxn/XHhpF3ivRRhiLFFL4nTclKroqv1j481
         7PyvdEjzXr1OScgiyI+dByj91C/Ub+znN5SiLCNxqMWBAGEajj5dGGaqvbWoa3y/uzSF
         N40e06EpP5QWBXpoT5tHLwbov5c0C28EluQLULuv/xWsJwrejWk2kk+bxLgxNePZq59p
         OYV3MvmRV6gBAL6XFMWcl7mI2ct616TPqgb6QcNcAkuzi1I6AxTA8Eteqqqt/BfyqmGy
         yEbg==
X-Gm-Message-State: APjAAAXv/wdRP5rb9eDBbu12ul6MAdB06GtIL85K9qEmSPSa23BmYhT1
	ObKcvaUG45d4PzktaDolyTWppNiZcpM=
X-Received: by 2002:a9d:2964:: with SMTP id d91mr8900042otb.286.1551590473096;
        Sat, 02 Mar 2019 21:21:13 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id n25sm1145694otj.76.2019.03.02.21.21.10
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 02 Mar 2019 21:21:12 -0800 (PST)
Date: Sat, 2 Mar 2019 23:21:07 -0600
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v4 0/2] Fix checkpatch.pl issues
Message-ID: <20190303052106.GA31969@madhuleo>
References: <cover.1551552831.git.madhumithabiw@gmail.com>
 <20190302211850.GA21688@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190302211850.GA21688@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Sat, Mar 02, 2019 at 10:18:50PM +0100, Greg KH wrote:
> On Sat, Mar 02, 2019 at 01:04:25PM -0600, Madhumitha Prabakaran wrote:
> > This patchset fixes the comment styles of SPDX-License Identifier based
> > on License Identifier syntax.
> > 
> > Madhumitha Prabakaran (2):
> >   Staging: vt6655: channel.h: Fix comment style of SPDX License Identifier
> >   Staging: vt6655: desc.h: Fix comment style of SPDX License Identifier
> 
> Again, these look fine.
> 
> Now go look at the subject lines of the patches you sent out.  It does
> not match these.
> 
> Something is really wrong with either how you are generating this
> message, or the patches, it does not make sense at all.  They should
> always match up identically as git should do it all for you.
> 
> Please try sending the series to only yourself next, to verify you got
> it right, before sending it to everyone.
> 
> thanks,
> 
> greg k-h

I fixed this using the below link. https://wiki.umbc.edu/pages/viewpage.action?pageId=1867916.

please correct me if I'm wrong

Thanks 

Madhumitha


