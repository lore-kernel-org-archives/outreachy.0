X-GM-THRID: 6663088716189270016
X-Received: by 2002:a1c:7503:: with SMTP id o3mr261400wmc.9.1551428428844;
        Fri, 01 Mar 2019 00:20:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:f107:: with SMTP id p7ls389422wmh.6.canary-gmail; Fri,
 01 Mar 2019 00:20:27 -0800 (PST)
X-Google-Smtp-Source: APXvYqwEO8DIrOOjGmexI4KDFzvmVa2ektl4QRgT984l16Rka+1ab1aVssLJGe2hYbnLnk3PeiXK
X-Received: by 2002:a05:600c:21d4:: with SMTP id x20mr245333wmj.25.1551428427954;
        Fri, 01 Mar 2019 00:20:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551428427; cv=none;
        d=google.com; s=arc-20160816;
        b=XTmwlDic5QDyf73RwHCbJYkdaakPIh+f3YwB4qT0mJrpdXUadsXJoJ4nYbpY5uUha9
         ZPc085v0su5nyg3L0mWMrEbokvyzEb8r5c1taUEeFyKzPpTZzvBAihmegR5aAU/AQuQ9
         fwgW0um8ah/gcM6HJ4Yu9O+2xn2XVcrqAjm104cZHOCUUMfbj1vztHjVlZAWK907ZT/W
         jfyNZpoX6s3HSnW5IiAC93wJXl/HAzeVf8DD1EgyBIGXt5XmeF1ckzvAc99wmyLO4sWE
         uzWr11KKZvY2IQN2u0zm/Sy3eP8ETDn3UvTDEww5Ef5AS/JZ+QEUQu54OcwTWX0OEV7a
         i9Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=hJ7IOyBdsYDDV4rDHva6FHeuB17Jrrfh0csaEEdq84U=;
        b=DBCuHmjWgODNlnXfUfYH2UBXw6VAvT87D4HaVD8MygJX0Y7pozssk9fT+N4wqPY4gg
         zDpkxuVMDoN9CV5e7eJUuAa2twbr90iONTpo3s0QC98vMhEveq+RzAIz0MG1cweUeKru
         5Sx6H3b16emLBKaF9eN4StVnjnQR+iy+TB6ANciWkfjp/c4zZbasrz3XKnO+/idnpwm6
         C+iJM/6pDMjtqfLCu4aNu+aJYb+EkPSuYIvnyCs4tQ9CKnvFTxKXJEx77BICDI0/I+7f
         ib/ZYPvAZnoarYmP6JRcXDWGNSYWAXq+uy6UhvKcVUfGBZxk/pWU5ima6GNh0eDtdb+J
         Lm3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m1si1117228wrj.4.2019.03.01.00.20.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 00:20:27 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,426,1544482800"; 
   d="scan'208";a="371463555"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Mar 2019 09:20:23 +0100
Date: Fri, 1 Mar 2019 09:20:18 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: etsai042@gmail.com
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: fpgaboot: Delete newline at
 end of file
In-Reply-To: <7cbedee6-4634-4634-830e-0084b6e921f7@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1903010917500.4065@hadrien>
References: <20190228162703.14828-1-etsai042@gmail.com> <alpine.DEB.2.21.1902282110390.3134@hadrien> <7cbedee6-4634-4634-830e-0084b6e921f7@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="----=_Part_89_627094834.1551410316300"

------=_Part_89_627094834.1551410316300
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Thu, 28 Feb 2019, etsai042@gmail.com wrote:

> Hi, Julia! There is a checkpatch.pl warning
> of drivers/staging/gs_fpgaboot/Kconfig because, as it is written in
> Documentation/kbuild/kconfig-language.txt (line178):------------
> Every line starts with a key word and can be followed by multiple
> - help text: "help" or "---help---"
>   This defines a help text. The end of the help text is determined by
>   the indentation level, this means it ends at the first line which has
>   a smaller indentation than the first line of the help text.
>   "---help---" and "help" do not differ in behaviour, "---help---" is
>   used to help visually separate configuration logic from help within
>   the file as an aid to developers.
> ------------
> The newline at the end of Kconfig file is the reason of this warning,
> deleting it is the change I made. I did not made major change to its
> context, just fixed its code style.

OK, this is a good example, of why a log message of "Fix checkpatch
warning X" is not very helpful.  There is no way to guess the relationship
between the warning message and the change.  The log message should say
what you do and why.  So here is would be

"Add a missing newline at the end of a Kconfig file, to silence the
checkpatch warning ..."

julia

>
> 在 2019年3月1日星期五 UTC+8上午4:12:20，Julia Lawall写道：
>
>
>       On Fri, 1 Mar 2019, Elisa Tsai wrote:
>
>       > From: E-Tsai <etsa...@gmail.com>
>       >
>       > This patch fixes the checkpatch.pl warning:
>       > WARNING: please write a paragraph that describes the config
>       symbol fully
>       >
>       > Signed-off-by: E-Tsai <etsa...@gmail.com>
>
>       If your real name is Elisa Tsai, you should put that.
>
>       > ---
>       >  drivers/staging/gs_fpgaboot/Kconfig | 2 +-
>       >  1 file changed, 1 insertion(+), 1 deletion(-)
>       >
>       > diff --git a/drivers/staging/gs_fpgaboot/Kconfig
>       b/drivers/staging/gs_fpgaboot/Kconfig
>       > index 550645291fab..f1179eef2d78 100644
>       > --- a/drivers/staging/gs_fpgaboot/Kconfig
>       > +++ b/drivers/staging/gs_fpgaboot/Kconfig
>       > @@ -5,4 +5,4 @@ config GS_FPGABOOT
>       >          tristate "Xilinx FPGA firmware download module"
>       >          default n
>       >          help
>       > -          Xilinx FPGA firmware download module
>       > +          Xilinx FPGA firmware download module
>
>       I don't see the change here.
>
>       This is probably not the best first patch to send, because
>       without
>       expertise in the device, you won't know what paragraph to write.
>
>       julia
>
>       > \ No newline at end of file
>       > --
>       > 2.17.1
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20190228162703.14828-1-e
>       tsai042%40gmail.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/7cbedee6-4634-4634-830e-
> 0084b6e921f7%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
------=_Part_89_627094834.1551410316300--

