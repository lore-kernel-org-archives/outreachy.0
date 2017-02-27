X-GM-THRID: 6390855341335117824
X-Received: by 10.157.45.11 with SMTP id v11mr6367749ota.105.1488218176441;
        Mon, 27 Feb 2017 09:56:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.63.11 with SMTP id m11ls2949759otc.18.gmail; Mon, 27 Feb
 2017 09:56:16 -0800 (PST)
X-Received: by 10.157.7.193 with SMTP id 59mr6676187oto.148.1488218176102;
        Mon, 27 Feb 2017 09:56:16 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x232.google.com (mail-pf0-x232.google.com. [2607:f8b0:400e:c00::232])
        by gmr-mx.google.com with ESMTPS id s64si3331731pfk.0.2017.02.27.09.56.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 09:56:16 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) client-ip=2607:f8b0:400e:c00::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x232.google.com with SMTP id 89so5588170pfi.3
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 09:56:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Kc1SEqLODsfJSHEkIKGVDWlws//j4oZLDiUipGVkUAw=;
        b=AI7xy7MbCtWGlcGZw8rJQcyA8DwXaTf6/IE+Z9rwJCKan9BNsLynfsouTgp0EDMBbF
         EhR4fDmfHkXpLGqHF3p6xIMcG7jRTgoCYNRf0/gqeZE5l5v9gd3zCjRUW47EAUOZOKqn
         X0xF03fV3BuZKBbs4KpDiNCY/WkhD9YibGJ2qCvElVrYKYpOpHr7SkgeaLzNKi7k4A4U
         8wILEnWTWhtvUwzz7AlQzyb9ygX0IeVFYglPidX1XvxcZ0HTh9tvTZQLOgkPPzRfKIWT
         PaZQ+H5jU9Ms+HkSE4QMe14OGwDzmn9RWufKJQRtdyKIz+uR1a/6tqesxqd20hVL52Z6
         4Rng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Kc1SEqLODsfJSHEkIKGVDWlws//j4oZLDiUipGVkUAw=;
        b=MiB9jeC/bUvEo0MpnaFSRX/lI2Pf+DuhbK/AHPy/VOBtsKdZUtKXQwQLMYmPbqFhUv
         zQIzEoIxvrLw52mtzZsSLCuxNrRpPLX+Wfd8Z5hX4YRUVafBRdVNEPpsFMq7mURrW6P6
         i1t9w2EGxMET9GsXZ/LZLQbVpOv8h2yNeVtN3jg/rtdWipz6jGfF0MqeochtRI8bfS7J
         WMEwfs7VdydFOoB6K8C0Y1ftr0EeazmikW3HvXE5iLu5a59kSV8+DXn4+YQMB8iq5+Vx
         XOzyQA+KhNEkkk8Zc6Fc/M1LTSxUKaaSMmlmUOEgcHgBjF4iudY64h0nvIOJpnCW/CLo
         xs1w==
X-Gm-Message-State: AMke39lJvw/Emrm6DsVj4CpcFxa4JznDL/Vbny7AdbdZaORWPmF9At2V0jVDX/dmcuELyg==
X-Received: by 10.84.129.3 with SMTP id 3mr25980369plb.150.1488218175848;
        Mon, 27 Feb 2017 09:56:15 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id u82sm31934448pfd.7.2017.02.27.09.56.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Feb 2017 09:56:15 -0800 (PST)
Date: Mon, 27 Feb 2017 09:56:14 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: lars@metafoo.de
Subject: Re: Clean-up idea: IIO Headers
Message-ID: <20170227175613.GC1549@d830.WORKGROUP>
References: <20170225014231.GA3395@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170225014231.GA3395@d830.WORKGROUP>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 24, 2017 at 05:42:40PM -0800, Alison Schofield wrote:
> Hi Outreachy Applicants,
> 
> Here is a clean-up task for staging/iio you might like to try.
> 
> Staging IIO Header file (re-)organization:
> 
> Guidelines to follow:
> 
> (Reference  https://kernelnewbies.org/KernelHeaders)
> 
> Three cases you may find:
> 1) If it's a single source file, its header info should be in that source file.
>    *** Do this!

Update - (thanks Lars)

The platform data struct needs to stay in the separate header file until
the driver is moved out of staging.  If this is your case, you can move
the other contents but will need to leave the platform data in the .h
file. When the driver is moved out of staging the header will go into
the global include/linux/platform_data/ folder.

You can see examples of this in the outreachy mailing list already.

> 
> 2) Interfaces between source files in a single module can have a header file
>    in same dir as the source files.
>    *** Leave this alone.
> 
> 3) Interfaces shared between modules go in a header file in include/linux/iio
>    *** Leave this alone. We will do this when the driver is moving out of
> 	staging 
> 
> Here's an example patchset:
> https://groups.google.com/forum/#!searchin/outreachy-kernel/header$20file$20ad5933%7Csort:relevance/outreachy-kernel/THYpgGyOgsI/iz8lrqwfDAAJ
> 
> Note that when you pull the header file in, there's a customary order to it
> that the drivers in staging may not be following.  In the example one above,
> I moved the #defines to be before the chip structure definitions.  So, you'll
> do best if you look at similar drivers in the same directory upstream, to
> see how they order their header information.  Always good to look at a few,
> because one may not be the perfect role model.  
> 
> It is customary to alphabetize the #includes, and to separate the kernel
> and IIO subsystem #includes with a blank line.  So, although we wouldn't
> send in a patch just to alphabetize #includes, while you are moving them
> to the .c file, and while you are checking that they are actually needed,
> sure - go ahead and alphabetize them.  (Example patch didn't alphabetize,
> you'll do better ;)
>  
> To verify the patch(set), I'd suggest applying it to a clean tree and
> rebuilding.  
> 
> Questions?  Just ask on this thread.
> 
> alisons

