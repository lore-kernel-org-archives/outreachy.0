X-GM-THRID: 6665043213885112320
X-Received: by 2002:ac2:4149:: with SMTP id c9mr324915lfi.12.1551854363885;
        Tue, 05 Mar 2019 22:39:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:f501:: with SMTP id j1ls84736lfb.9.gmail; Tue, 05 Mar
 2019 22:39:22 -0800 (PST)
X-Google-Smtp-Source: APXvYqxfuOd60bgvw6xonhQUO1vu2DSQbOL+E8cr3eOqCaDKC9/GFtDyg9oCwkbTLbnI8vg0kHSh
X-Received: by 2002:ac2:4149:: with SMTP id c9mr324910lfi.12.1551854362964;
        Tue, 05 Mar 2019 22:39:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551854362; cv=none;
        d=google.com; s=arc-20160816;
        b=0FJ4innHBSO44SUJSJlGN9fX522c6HoP2FBZcwl2axyA5t0xCeQI3BAlP/mp9Fbpur
         nC2/X4x1CR1GtAWhQfUz6HhuiE4oEjN03xczeGkxWsr5M4X0H38IWdPzB4k8MPPgLLyZ
         VXCLz+0B+OqBh6o+kZ3RkrBy7cr/Cn9PE/HUn50yxSk76JrphlKbIsnh+TmeTwdi5byX
         R8d8wNip/19FtaZ6uHO2GMsr63xJ0cVccQsQiBpOns/drzkYev4eZOZkgaCGM6COIyZj
         WZ1acqW7xqoHUNQkltNUS839K4hqzK/g1aOyjBC/7EX6CcO7q/QN98LagvIEQT4mPAmK
         GM5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=jTFjIACIX0/HY9/dgppf+VbWFbt6YBsopTGJgU0UYNI=;
        b=AbExM3VIn+dvI+Nor6xUndGzWwJ4+14Idf6rs3KFHFt63YT+G5iHhv4bjGUxhf/PdY
         MGMIjAebU7QAH782zyFRS2VxKpizXE4AsTrxtStY8KYKfngm63gcdtDdqznKXsS/Phv1
         U68jpmTDSRnAX1IcZpWGkjUjiHz3ryFhQDZWk1u2ko3oxyvnwjJbifdMYG+u3xIN3t/U
         kaQSHU+DWhnnfkU6sFHB6mIaLgV2ipJGYHKhqjcBSC8T6Zal1XKK17cexF4gmP2spz2I
         hv/sExUM24JZXq/xPZLhzeVUQRcBNHd8d2lZCxG3e0f3L/rbnoGCq2U/bra5fVY5QLO4
         JJDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f20si17164lfc.5.2019.03.05.22.39.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 22:39:22 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,446,1544482800"; 
   d="scan'208";a="372111991"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Mar 2019 07:39:21 +0100
Date: Wed, 6 Mar 2019 07:39:21 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Daniela Mormocea <daniela.mormocea@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v5 0/2] staging: vc04_services: Fix
 two checkpatch warnings
In-Reply-To: <1551826297-28015-1-git-send-email-daniela.mormocea@gmail.com>
Message-ID: <alpine.DEB.2.21.1903060735500.2706@hadrien>
References: <1551826297-28015-1-git-send-email-daniela.mormocea@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

OK, you have a more reasonable subject line now in the cover letter, but
it needs to be in all of the patches too.

However, if I look at the file you have changed, the recent patches on
this file have a subject line with staging: bcm2835-camera: not staging:
vc04_services:.  Please go back and read the entire tutorial again.  It
has information about how to choose the subject line, how to make a
series, etc.  These are things that have evolved in a particular way in
the Linux kernel community.  You can't guess on your own what is the right
thing to do.

julia

On Wed, 6 Mar 2019, Daniela Mormocea wrote:

> These patches fix the following warnings:
> -Avoid multiple line dereference
> -Logical continuations should be on the previous line
>
> Changes in v5:
> -add driver name in all the patches from the series
>
> Changes in v4:
> -add driver name in subject
>
> Changes in v3:
> -add cover-letter to patch series
>
> Changes in v2:
> -make these a patch series
>
> Daniela Mormocea (2):
>   Fix multiple line dereference
>   Fix logical continuations warnings
>
>  .../vc04_services/bcm2835-camera/bcm2835-camera.c  | 51 ++++++++--------------
>  1 file changed, 19 insertions(+), 32 deletions(-)
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1551826297-28015-1-git-send-email-daniela.mormocea%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

