Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBBA77466
	for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 16:15:35 +0000 (UTC)
Received: by mail-pl1-f178.google.com with SMTP id iw3so5796413plb.6
        for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 09:15:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679069735;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rS805OmHGEsFQ4QiyeJL1sSP8q26rpH40DNpvZqMxq8=;
        b=cXrd2lOrOC7o5tShB0QqkQ+vNiqMd0GPMa3JLr34bOGgLgrnyP01Jk0+YFGu14JlJ4
         4wxUg6VOoXu2KAskwTlZO5OdI+a1VjXgGeyX8up4ak1pFxsZx+Pr8Wya3gtN9tEnP1bb
         1hOv/tUD+EixtCvhnShxKSb+vB7Q0lTj3NOhHZn3ogFFwwy8dSc8iqAmBpHnjTTDZdB2
         m9/FpTTA48MNUvlQmmo8uSH8xiuXpsxjdW5m6VyivNqzs2owwwjDaMrnQDlIYQpWCxRp
         FlNOduVY+u8v3ya+33KDOt5Fip1A+7BLJwxMaF/K48Zi9OgyUb5min+1X7AhIMrQ7XE2
         7UaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679069735;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rS805OmHGEsFQ4QiyeJL1sSP8q26rpH40DNpvZqMxq8=;
        b=lsGo2hRv8D4xkeaACAKBYWSmbGheQdXny8SuIipAKrjZYxH7DXCSMQPpIa1i2plHKw
         PlMwjwiALSgNDh+pZc4CYunmrZONHNIypRHppQ/c6J44r3pVrbE9m4VoSmKkKLTL3z8D
         KiHdpghg4KVwx+DfHA2a3577oHzmrUEX4IqvOGbsulR8pz2UD1Xxj5ZHOGR8gNOkhjcA
         nyGUwAHJ4SOngv8De9WYxd57JYSVEiFW3J2djPmN+TyxNMs0an3vJxAr/GBGu1OcD5ci
         DzvcInv73IhG95pj7NEMDPfmPqeqiwGrWZclb+zisq0ir1BKff2c5hT+X0NSRI73gvPj
         Tm9g==
X-Gm-Message-State: AO0yUKVPP5+tTShrWUbIEAlI3Xx/aBrhC/fI17yucrOWo3sQA6tjF7TV
	+1FaclVPRUCsfwHm2OE7Cwk=
X-Google-Smtp-Source: AK7set/f4wxWtrGyk3fWJP5ooZskUHhr0BLkMJA8o1ihH2DZQUi+FkH46JGRcZPjnsU2EHc7TJ8Q1Q==
X-Received: by 2002:a17:902:d0d1:b0:19e:7b09:bd4d with SMTP id n17-20020a170902d0d100b0019e7b09bd4dmr6587360pln.47.1679069734980;
        Fri, 17 Mar 2023 09:15:34 -0700 (PDT)
Received: from sumitra.com ([117.98.68.136])
        by smtp.gmail.com with ESMTPSA id ay6-20020a1709028b8600b0019a997bca5csm1737116plb.121.2023.03.17.09.15.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Mar 2023 09:15:33 -0700 (PDT)
Date: Fri, 17 Mar 2023 09:15:28 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: Bagas Sanjaya <bagasdotme@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [KERNEL NEWBIES ACCESS] Sumitra Sharma
Message-ID: <20230317161528.GA2392@sumitra.com>
References: <20230312170757.GE28100@ubuntu>
 <20230316083116.GB47053@sumitra.com>
 <ZBQqAmT0egOgizg0@debian.me>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZBQqAmT0egOgizg0@debian.me>

On Fri, Mar 17, 2023 at 03:51:14PM +0700, Bagas Sanjaya wrote:
> On Thu, Mar 16, 2023 at 01:31:16AM -0700, Sumitra Sharma wrote:
> > On Sun, Mar 12, 2023 at 10:07:57AM -0700, Sumitra Sharma wrote:
> > > 2. The outreachy document directly links the ".rst" file
> > > https://elixir.bootlin.com/linux/latest/source/Documentation/process/coding-style.rst
> > > at many places under different sections. And as noted by fabio there is a difference between the
> > > .rst source files content and its corresponding .html file which can lead to confusions and missing
> > > important information. I would like to suggest to change the links to the .html/.pdf files rather than the > .rst source files.
> > 
> > Hi mentors
> > 
> > I would like to have some update on this. 
> > 
> 
> OK, please go ahead. You need to link to
> https://docs.kernel.org/process/coding-style.html.
>

Okay! Thank you. But as Fabio wrote I need to get permission from
Alison to get access the outreachyfirstpatch document in write mode.

Regards,

SUmitra

> -- 
> An old man doll... just what I always wanted! - Clara


