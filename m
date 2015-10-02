X-GM-THRID: 6200732724667351040
X-Received: by 10.107.163.80 with SMTP id m77mr12547867ioe.0.1443764852861;
        Thu, 01 Oct 2015 22:47:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.19.78 with SMTP id b75ls817127ioj.84.gmail; Thu, 01 Oct
 2015 22:47:32 -0700 (PDT)
X-Received: by 10.107.134.150 with SMTP id q22mr11857302ioi.31.1443764852060;
        Thu, 01 Oct 2015 22:47:32 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id wl2si1464853pab.1.2015.10.01.22.47.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 22:47:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id lk4so96600191pab.3
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 22:47:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=tXhJk9FPVaWL1o07kt2XpFkmffQh4GOi1yhzn4KRy4w=;
        b=Jbwk3Ikp2ysPUetB2gFUeGyBKliMiUXyR84rdYwfg/3EisZ83DFPTWgIpnpbQ8YEv4
         3W/5YzlKwMSUbyI3GcagaphEUwA56x94ah2odum6Z/yRWd8CPR+h+3svdGlnON+oUrIk
         qfYNtVYGXRUqgvFNqhRpD2Mvg4/E+cp3mqNBPZHJjpAm39IQAPKLc3zWczurhJesrQ9A
         qB2vcT94wekK+GhH8L/EwaH/S8G7ZxpI5m/b5AFr/HQKm82WF3yn78Lcw9KNx9cKqdJS
         siCAX1tqXd89yDefaLus1ghr7GZkTnbvFstx/axWCVt6Zq81K6MlQg9Revw/yQbacm/O
         P71A==
X-Received: by 10.66.160.34 with SMTP id xh2mr18034912pab.67.1443764851895;
        Thu, 01 Oct 2015 22:47:31 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.244.224])
        by smtp.gmail.com with ESMTPSA id li3sm10048595pbc.1.2015.10.01.22.47.29
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 01 Oct 2015 22:47:30 -0700 (PDT)
Date: Fri, 2 Oct 2015 11:17:26 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/6] Staging: lustre: ptlrpc: Declare
 sptlrpc_rule_set_choose as static
Message-ID: <20151002054726.GE3544@sudip-pc>
References: <1443720581-11352-1-git-send-email-shraddha.6596@gmail.com>
 <1443720581-11352-5-git-send-email-shraddha.6596@gmail.com>
 <20151002045746.GB3544@sudip-pc>
 <alpine.DEB.2.11.1510021106190.27480@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.11.1510021106190.27480@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Fri, Oct 02, 2015 at 11:08:48AM +0530, Shraddha Barke wrote:
> 
> 
> On Fri, 2 Oct 2015, Sudip Mukherjee wrote:
> 
> >On Thu, Oct 01, 2015 at 10:59:39PM +0530, Shraddha Barke wrote:
> >>Declare sptlrpc_rule_set_choose as static since it is accessed from this
> >>particular file only. Also remove it's declaration from
> >>header file
> >>
> >>Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> >>---
> >This patch will not apply because of some other changes done by:
> >d97cc6442a44 ("staging/lustre/ptlrpc: secure wrapping code cleanup")
> 
> I'm confused as to how it applied to my staging-testing :(
> Should I send a v2 dropping this one?

Try to see if you have this commit in the tree. Try to rebase. It is not
applying because sptlrpc_rule_set_dump() is not there in the file
anymore.

regards
sudip

