X-GM-THRID: 6608518464000753664
X-Received: by 2002:aca:d846:: with SMTP id p67-v6mr4986993oig.6.1538667746441;
        Thu, 04 Oct 2018 08:42:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:7559:: with SMTP id b25-v6ls2745106otl.14.gmail; Thu, 04
 Oct 2018 08:42:25 -0700 (PDT)
X-Google-Smtp-Source: ACcGV636N7f2IS72OU9u9Hfo0sv2iEXOpA+BSzmIhLccqyP2QiPtG5SU7m08OzBb+An47FGw2iBh
X-Received: by 2002:a9d:5610:: with SMTP id e16-v6mr5030337oti.67.1538667745679;
        Thu, 04 Oct 2018 08:42:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538667745; cv=none;
        d=google.com; s=arc-20160816;
        b=aA44KLxEZdreIqDnnZ6srn2FGie4/wPfU9pz93ccGfzOBV9JaZIRKHpl8Vii65c1br
         /HNB2nPNaQIdmjCmK5CMahpJ4Dr1O5ejam3JYi/A3BL5T75P8So/gEW3RvbJvf5TFzSP
         UDqjdrIpao+fxsjQv1m5OOzgQHC65EQYmkvt7VU6ZPe07TGB3G3O7WWxArMbou8xqddJ
         g1Sn7TfifJH2yrb+hr5IzQrEjZX5c9OI9qsa742fTFJnhK3DzdzraL8jAxADLfhPW3IH
         5is9HrDBi5bNukyHoaQHK0DyClOOhJBPWfDdsz2/yr1udBvUWvmjCqgekBWvlF1a8HIv
         28fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=jm0XRI7w/7cRNeop7wmRmmm4XYyj+GJ/UM2/G2gefIc=;
        b=ApYj8zhvTezBrYZuTWYCS7UJm5DV1xfF1Xqjhao/Tz6qYPJ3KVRnnGjthBF2T7T/b/
         v0D6znXu4OWRRUJEIO0Ot6SxIjNxc5bS4xzLUk/R39vqwBMdXGXDKt0kT/2SFyNkJKau
         Abyu7CRUAhfjgWn7m0SqfflYAlgtgSWfy6BCwRXTZ8uiRZitL4ZBK/sDoj5ixdGzs7cZ
         vFOGykj7Ku+j26uzk807GzA5WyutbfDNH1rsiEyxhdkEL7GLX2eahZn9FwNcsVpnUQbH
         VwUNkHY5XqtDZIXhL12qYLYUaql0Mj2ev3OrPTYcoF5ltaNiNVTHHAngIKYf9HxznmQC
         o4yw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id u207-v6si239501oie.0.2018.10.04.08.42.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Oct 2018 08:42:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.132.1.111])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id BF6D8412;
	Thu,  4 Oct 2018 15:42:24 +0000 (UTC)
Date: Thu, 4 Oct 2018 08:42:22 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhanusree <bhanusreemahesh@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [Outreachy kerne][PATCH
 dri-devel]drm/ati_pcigart.c SPDX License Identifier is added in form of a
 comment.
Message-ID: <20181004154222.GB6921@kroah.com>
References: <5bb62c85.1c69fb81.9de38.b242@mx.google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5bb62c85.1c69fb81.9de38.b242@mx.google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Thu, Oct 04, 2018 at 08:36:43PM +0530, Bhanusree wrote:
> SPDX License added Identifier in the first line
> 
> Signed-off-by: Bhanusree<bhanusreemahesh@gmail.com>
> ---
>  drivers/gpu/drm/ati_pcigart.c | 1 +
>  1 file changed, 1 insertion(+)

I can not take any kernel changes outside of drivers/staging/ for
outreachy applications, sorry.

Also, you need to use your "full" name for the author info and
signed-off-by.

thanks,

greg k-h

