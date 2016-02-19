X-GM-THRID: 6251802816159940608
X-Received: by 10.31.15.11 with SMTP id 11mr10985139vkp.3.1455864355270;
        Thu, 18 Feb 2016 22:45:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.79.71 with SMTP id h7ls2763602obx.2.gmail; Thu, 18 Feb
 2016 22:45:54 -0800 (PST)
X-Received: by 10.182.105.133 with SMTP id gm5mr10603191obb.41.1455864354794;
        Thu, 18 Feb 2016 22:45:54 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id 12si1458048pfb.1.2016.02.18.22.45.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 22:45:54 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id ho8so46383266pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 22:45:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=YdRZ2Cb0QyDR2mpPBKG1O3ZTZbMjySS/GS+h/qaK9Gc=;
        b=u/2rbPKin5qqlZjLSoAh+i6e7p6oxSy9rN4NgQLZ6WDhfJR0td5gm21cxyEAxw0sM1
         Z45qesKGeDr+TSq1zJEEigQ/pcPgpA8f5gorAovR5Vmxj2hPJvrm8j50n9TKDZBM9o1v
         NtD7FyLP+UqmLYRD2w7Z77b+g5XirOVH21lCAnI7Krpwla1xOXgUzhd5SmZJFH9UjoCa
         sBZnm8rDISRpCki/zxxr2momj7OdaRz11WBKmmCtmSGwp/Jjox9FtZnEgtbg8UDZm0IQ
         sxNjnuhimlR9DLudoKzyFu8ugHbS9QyR+h2DI+OcTn0opY0lg/y+Jny2JFv8WMO7RJMg
         bBjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=YdRZ2Cb0QyDR2mpPBKG1O3ZTZbMjySS/GS+h/qaK9Gc=;
        b=R7Bnncf1tf1gjAmJqmWmMn+hyQl8278BmFIU1zxHrGCSWra8ryOyJaGyxPYlNf+nEQ
         j60KxqQvrzyDuaZ+/DvpSgnKBpmHvP84JKKK4aheUfM7IEZmZoE/7x4mkqONz71767Ky
         d4l844PKvx96RYQ/QVxYRqELD5jmQGyS7IMIyHyZhXP05fwsd2WC0bUlhSEE2Jt6z70t
         bQnNt/di+ZpDgQvY657mUrnRCuPoPwAKFBTEqmldZ7uLjUu2mKB5EAihZlSmVStESGnT
         ksqBuZcbKMjL+3XoDVeE0yF89wU01ndZg0hm8NpS0Z0qvokYFBTmp1YCulVqV2qgotNn
         5XdA==
X-Gm-Message-State: AG10YOSSgA8PLirLPy8PmQcQB1kNQ8jlpEj5PaP0wbeFApkspI/C8EDuUcMudK2LOIGAUA==
X-Received: by 10.66.62.162 with SMTP id z2mr15755264par.39.1455864354653;
        Thu, 18 Feb 2016 22:45:54 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-72-178.dhcp.embarqhsd.net. [67.232.72.178])
        by smtp.gmail.com with ESMTPSA id s21sm14879646pfi.29.2016.02.18.22.45.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 18 Feb 2016 22:45:53 -0800 (PST)
Date: Thu, 18 Feb 2016 22:45:53 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: wilc1000:
 host_interface: remove unused semaphores
Message-ID: <20160219064551.GB2364@d830.WORKGROUP>
References: <cover.1455609607.git.amsfield22@gmail.com>
 <56da9617c7a47e0d72e5f2fdf4cd4432c4cda842.1455609607.git.amsfield22@gmail.com>
 <4981983.aWxGuik0IG@wuerfel>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4981983.aWxGuik0IG@wuerfel>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Feb 16, 2016 at 09:33:38AM +0100, Arnd Bergmann wrote:
> On Tuesday 16 February 2016 00:30:35 Alison Schofield wrote:
> > Remove unused semaphore declarations, initializations, and unlocks.
> > 
> > The functions that locked these semaphores were previously removed,
> > so this cleans up the remains.
> > 
> > Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> > 
> 
> Nice!
> 
> Reviewed-by: Arnd Bergmann <arnd@arndb.de>

I'm wondering if I should have cleaned this area up more. I was 
cleaning up the semaphores because the functions that locked those
HOST_IF_MSG's has been removed.  However, the "handlers" for these 
returned HOST_IF_MSG's still exist, as does the case in the 
hostIFthread() switch.

They seem like artifacts, but then again, they could be needed for
some pass-thru mode.

Leave it, clean it, or seek more info?
Thanks,
alisons

alisons



