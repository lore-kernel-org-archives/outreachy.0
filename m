Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 925F515BA
	for <outreachy@lists.linux.dev>; Wed, 22 Mar 2023 04:12:53 +0000 (UTC)
Received: by mail-pj1-f50.google.com with SMTP id l9-20020a17090a3f0900b0023d32684e7fso203292pjc.1
        for <outreachy@lists.linux.dev>; Tue, 21 Mar 2023 21:12:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679458373;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uErmRxuZr1VNHcKP9rsZt3Z5PTm2O9OHbtuvXXez5lM=;
        b=KQc83fYW4U1hDKRjXlxyds3gYZGstPVKzZxLyPF1rGWxIU1bvS32S8wmNedPs7QTD9
         +4GyRRfNtlv8lQhgnv3ssQMi2P4Ngaa+97E1sT4TPgnJmq1em6+ru+NTflueSUHuLimT
         ncLWhW+q2hN/MwVZCDFHcuIDsh5Pv4JZY/Us3WS1Zx+t6bMLJvOi/VVGdPfojAs+e4FZ
         ztHJaIbir+Mn3Lzmi1cF7y8siaqzTl+Z7UOBcS7UphQ9uSk/upsYaTVOSjbtGheUXa99
         n3mV0QL4TQOUqG/QX2XH4TpyF7yA0qanmqE84xhC8n8iSLKt/Z+UAi+k6HvyYS24aXW8
         kSyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679458373;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uErmRxuZr1VNHcKP9rsZt3Z5PTm2O9OHbtuvXXez5lM=;
        b=jIXaw6tcZABG65NArrdVmJoU7k3kZCRhuOECE9AOre1nq1IBMmN43Lm72zzq8nc+Gb
         J72/mqMwOgxPX+9GDWD3J2189dhWh3J+L4MIN/LPsMuMrhOV9VGnTbJ/XxfkH2+Y2epZ
         qjfwgmM/EHQvY2bULVFP5n2QPFaqDV0V0o1hgY8kmQooRAoa67QSi6PejBAogVDRWwK4
         QGobzPxQrvdzT3iRCEubgOmQ8eG+VW0dW5fS2pn2rz0odEirkzRQhpUjS/FsPOUZw5A7
         /sZFqoUOwBsMFcz8ijn2lSdl+lSCnE5xatqCqXz6ksd10fshtRT2cVOfZ6CbpViRts7y
         6G6A==
X-Gm-Message-State: AO0yUKVoERjc/cD5tZxLCCR0GmwIO36y4/DErIx5UQm5us+Xhk0YsCog
	vzIMdPaG5sH9aYAO9HW5I2lGvhU+9n5MCQ==
X-Google-Smtp-Source: AK7set8Hi8Sh9YmTBD0SEKw0nmnWjU9+lZ4fp/EY0m1gYDnz8fX+fQ2d7YeeIYvPO1OgXyZAyt2xxw==
X-Received: by 2002:a17:902:ce81:b0:1a1:a8eb:d34d with SMTP id f1-20020a170902ce8100b001a1a8ebd34dmr1704000plg.46.1679458372645;
        Tue, 21 Mar 2023 21:12:52 -0700 (PDT)
Received: from sumitra.com ([117.245.171.219])
        by smtp.gmail.com with ESMTPSA id k23-20020a170902ba9700b0019a95baaaa6sm9510273pls.222.2023.03.21.21.12.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Mar 2023 21:12:52 -0700 (PDT)
Date: Tue, 21 Mar 2023 21:12:48 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: Deepak R Varma <drv@mailo.com>
Cc: Julia Lawall <julia.lawall@inria.fr>, outreachy@lists.linux.dev
Subject: Re: Unable to find module location
Message-ID: <20230322041248.GB149888@sumitra.com>
References: <20230318084048.GC4434@sumitra.com>
 <ZBWAsdC5UOEkbedF@ubun2204.myguest.virtualbox.org>
 <20230318130211.GB39892@sumitra.com>
 <ZBXh98I11pj38Jy2@ubun2204.myguest.virtualbox.org>
 <20230319084520.GC50179@sumitra.com>
 <ZBglD5yEm2Qb40qf@ubun2204.myguest.virtualbox.org>
 <20230320100216.GD126429@sumitra.com>
 <ZBgyZz0c70QQAQax@ubun2204.myguest.virtualbox.org>
 <ZBgzl2/RuwlWOJQ/@ubun2204.myguest.virtualbox.org>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZBgzl2/RuwlWOJQ/@ubun2204.myguest.virtualbox.org>

On Mon, Mar 20, 2023 at 03:51:11PM +0530, Deepak R Varma wrote:
> On Mon, Mar 20, 2023 at 03:46:07PM +0530, Deepak R Varma wrote:
> > On Mon, Mar 20, 2023 at 03:02:16AM -0700, Sumitra Sharma wrote:
> > > On Mon, Mar 20, 2023 at 02:49:11PM +0530, Deepak R Varma wrote:
> > > 
> > > VM linux distro = Ubuntu 20.04 64-bit version
> > > Host architecture = windows 11 x64
> > 
> > Try the following steps and let me know if you are able to select and configure
> > the dependencies and the driver you wish to build:
> > 
> >    cd /path/to/linux/source/
> >    cp .config .config_x86_64
> >    cp arch/arm64/configs/defconfig .config
> >    make ARCH=arm64 CROSS_COMPILE=<<arm64 gcc compiler binary path>> menuconfig
> > 
> > Note: you first need to resolve the dependencies and then you will be presented
> > the selection option for your driver.
> > 
> > Once you configure the driver, run following to build the Kernel image and
> > should include your driver as well:
> >    make ARCH=arm64 CROSS_COMPILE=<<arm64 gcc compiler binary path>> 
> 
> If you have already progressed with the guidance from other mentors, please
> continue to follow those instructions.
>

HI deepak,

Your views were of great help. Things are now working properly.  Thank you for your help. 

REgards,
SUmitra


> > 
> > 
> > Deepak.
> > 
> > 
> > 
> 
> 
