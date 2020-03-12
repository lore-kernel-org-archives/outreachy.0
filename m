X-GM-THRID: 6803065802760126464
X-Received: by 2002:a65:5b04:: with SMTP id y4mr8188265pgq.25.1584023023414;
        Thu, 12 Mar 2020 07:23:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:84d9:: with SMTP id x25ls2416195pfn.2.gmail; Thu, 12 Mar
 2020 07:23:41 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvNTKVnG/z+x5YYBBa4AoZqU2yJBw1rb0WnQuAqen0qZgm1kysQbCbjjLff1KR9OgtTKeVD
X-Received: by 2002:a62:446:: with SMTP id 67mr8150446pfe.109.1584023021783;
        Thu, 12 Mar 2020 07:23:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584023021; cv=none;
        d=google.com; s=arc-20160816;
        b=TFmn5YB21XoegQM4jXHTLRlI9B1uUZIvnC4LPXJVhBneAcvIpg+nknlEH4sXROXHoZ
         bH0pmNfCi1+L0AMxBZOjYFembR2ybng1pjVJSKAr05xrhrQZYQQrzVERGb1sXt+7LA12
         ZG1Fn77jSvbRipNL2/qyC3eP3RklsavzccDCYuHyvzzPpZxTcje+s0MA+8KBno1MPyeo
         +mju+MwCVXA4FBDOCLhB7UGTgWrV3cb9Vfejdl3FXCbBCnX0xrf/zk8SOo14bkNgyVNt
         NmvPcqaNNvA83yiKdK9wAlp3VOo8YLQTEsv50W3iEdUWCbbi3gLMxZlZfuSA4YEpxhGF
         0SKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=IMhd14qMmscRm67PdjsNMG47fJHnogDmly9Yt+Q2xuM=;
        b=WMnfBGAr75aF3t0Li54eZBSt1LwFSKyVuxKen5qRId9H0aoj5aFlAekfw7v2eVsJFl
         NAOpgFk4IWeW07IDKvWQMyhdMYmWxPIooQvbGhmeVqoqM446Ncmj8KlRB2BGUpGuK1sz
         5qso+xKGRB3b7QUvFdfLg2j76HeQRFeUEIs6QZB1PV+SWabuYwZpyzkfKb/bAPZQ7x/2
         vqm3tq2dZbYJM228nd/3myAcWav+rjVxzSfxN9UCi9Raj33JClCFu8OCD4mI3RQ4FXjZ
         neWlvIkfRzuWX+2lVqSyNoR7rgGy6nPagqgEBDn55gHvfS6LcDhLNA80X2D8n7frJXFn
         Zpow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NdzyVi1b;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id x12si242155plv.3.2020.03.12.07.23.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 07:23:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NdzyVi1b;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id t3so3165198pgn.1
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2020 07:23:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=IMhd14qMmscRm67PdjsNMG47fJHnogDmly9Yt+Q2xuM=;
        b=NdzyVi1bDp3vXDPEoYJes4bQf2mVyre+BSG4ucN74hANeVte5kJ8Fx4nBnxPT3K/ep
         Pp9LD92dkvFvcsoamaTUatH9pARxk2u2TZoK+OLGKggIo8r8UbUB3HEccPLw5u6yqtim
         /buB069b1Wrp2eXBhc+oMwxzMnr1QqYFt3HEKtnJUXXSgkDq8WZXyaVnfTLcKsJ/XfHv
         YNZ+CMsxdVn30s/9tQP0MfU46ON3sRj5Dt2EJIP8o3svfUMyoFnakiXOwegjdbB6qcIs
         YkvdYJnAgrLHOITLPvb4I6i8Chr7onB6SWbgXBO54QzITW2cpu02Iv/K5PD/8U0DdVpV
         s9Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=IMhd14qMmscRm67PdjsNMG47fJHnogDmly9Yt+Q2xuM=;
        b=Nb86RPsTLPW3O3GiuLQ0q6Doc6E+CEpLObTv6LYeLZc0NVU7BI42qrYE+GSeOPUmA7
         AfGZ2+N+fug7o/vze0TYnQ8DMCLv4azx8h9m/WkN8BXMyEojI0ia1TCkFdHE7fcWgEc+
         blcTVY6RrdEsle5c5VC8GRPUzp8K8PSxQr2t0UJcN5X3vV0UASSQRVMG12laA+FxHH+c
         hcp1ImOlTSCoCIjfMMHEaXobRO7mWey5OZ7DiQzpqUWzjMzkl7+yW8pT0gg0VEkROXlm
         cnv4DufDZ18v+QwIIKccp781n2TKOpjW0s2b43zrQg6m6AXDVBqj4RZ0uAKTZ+Iys/ue
         O6jg==
X-Gm-Message-State: ANhLgQ3KUhr5UhrVvldRjczgL+9z93gbHL/AWB1X/h0BwjgZf1fOjFNG
	ksSSXi+VKPDfvxdq60FuL20IMUPB
X-Received: by 2002:a63:7783:: with SMTP id s125mr7980583pgc.214.1584023021539;
        Thu, 12 Mar 2020 07:23:41 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.39.128.28])
        by smtp.gmail.com with ESMTPSA id q6sm7511845pja.34.2020.03.12.07.23.39
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 12 Mar 2020 07:23:41 -0700 (PDT)
Date: Thu, 12 Mar 2020 19:53:36 +0530
From: DEEPAK VARMA <mh12gx2825@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, daniel.baluta@gmail.com
Subject: Re: [PATCH] staging: fbtft: Reformat lines over 80 characters
Message-ID: <20200312142335.GA29505@deeUbuntu>
References: <20200311212939.GA2872@deeUbuntu>
 <20200312081936.GG11746@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200312081936.GG11746@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Thu, Mar 12, 2020 at 09:19:36AM +0100, Greg KH wrote:
> On Thu, Mar 12, 2020 at 02:59:43AM +0530, Deepak R Varma wrote:
> > Multiple macro definitions crossings 80 character line length nakes it
> > hard to understand. Reformating the these lines makes the code more
> > readable and easy to understand. Issue flagged by checkpatch script.
> > 
> > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > ---
> >  drivers/staging/fbtft/fbtft.h | 14 +++++++++++---
> >  1 file changed, 11 insertions(+), 3 deletions(-)
> 
> You sent 2 patches with almost identical subject lines, yet they did
> different things to different files.
> 
> Please fix up and make them more unique and resend both of them.
> 
> thanks,
> 
> greg k-h
Hello Greg,

Sure, will do. Thank you.

Deepak.

