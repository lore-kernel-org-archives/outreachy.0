Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9B535692
	for <outreachy@lists.linux.dev>; Fri, 13 Oct 2023 06:52:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NZGWTc8W"
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-406402933edso18417145e9.2
        for <outreachy@lists.linux.dev>; Thu, 12 Oct 2023 23:52:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697179935; x=1697784735; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Iw6+ctYW3Ezn1+ti7Uve8frkm4o0a9yAQ5tUuhclcNE=;
        b=NZGWTc8W54m4J1gRruWm/DiFItL23MzUIfkU+fgraqr8gnVctjRy/akXkQgF2VlT8/
         iuTsG0wloS+LlWYyxby+pygq+8n9xE8HI5fR9vjNI24tzO910FTGdsE9jIZj0FU997gg
         gFZlWWxlOPkp+BAyOMJaBX5I3DBvg3NavQx1/pGifl+INvBa1xjctmsiVNG9g96ZXCbW
         3zHRGUsL6jYq52EXnSwBiC/vFsT0W4JLKh49By0UsX5ail4fxSMkA1Qh9YaiPOpQoS9k
         gbfZwx4RiBjGEdgpL9uKj6d13udMjE6VsIXknP+PvDymZkp5TeHNlRqFWFbQoguwnmqw
         K8nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697179935; x=1697784735;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Iw6+ctYW3Ezn1+ti7Uve8frkm4o0a9yAQ5tUuhclcNE=;
        b=Wq3RVeTCT9oj22h4EIGWgiAtlgFE97ffsBLMdNpSDF9piHqbRGr7qisWrCKtfEssMA
         2lk3Q3mZUTuzn51FA0qZhU9zFkwuQIORanYj4HiYH6UxqnNqKugAyNZGEhSUjQW6j639
         pbzV1Ls4BM2CGLyi0drv5ByAZgAqTW1GnnlzZ9dvElOfMNQ7J0WsYkPDLseui1G6B51z
         zLQYWcPO8hPi5Z0LdKiG6fQ/RdacSsDKiF0YJ89pr+xCE7YYeRSCyMrq0xTPNPP6zYkE
         KrOpocw/hToUNH+7qmKF+50i8VEQOPdLeFdrgGj9qi0qTtwXkjYl6zZzphBhPGmn6XHT
         zd5Q==
X-Gm-Message-State: AOJu0YxKrgFtoGDjVzET5NvsI3D1t2EwRpLNzSSwNsM1Lw+ULoZjV5sm
	nPF0qhSdoL7NAKFetbsJNiv2TTT+D6YQ
X-Google-Smtp-Source: AGHT+IHfoqXKaHkuIgLIpG+aEw8d6FugWAjXm4JVGt56Rk/J0bltFBN7szGMhC47FOBFOtl6xIFULA==
X-Received: by 2002:a7b:ce19:0:b0:405:3e9a:f1e3 with SMTP id m25-20020a7bce19000000b004053e9af1e3mr23684593wmc.11.1697179934642;
        Thu, 12 Oct 2023 23:52:14 -0700 (PDT)
Received: from dorcaslitunya-virtual-machine ([105.163.2.146])
        by smtp.gmail.com with ESMTPSA id n25-20020a1c7219000000b003fe1c332810sm1661718wmc.33.2023.10.12.23.52.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Oct 2023 23:52:14 -0700 (PDT)
Date: Fri, 13 Oct 2023 09:52:11 +0300
From: Dorcas Litunya <anonolitunya@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Subject: Re: [Outreachy]Clarification on code section in qlge driver
Message-ID: <ZSjpGx+s6xCVOnKF@dorcaslitunya-virtual-machine>
References: <ZSjkhx+xWP9xXiAt@dorcaslitunya-virtual-machine>
 <388ed3fe-8e5f-9be9-4072-30ebbdd17960@inria.fr>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <388ed3fe-8e5f-9be9-4072-30ebbdd17960@inria.fr>

On Fri, Oct 13, 2023 at 08:41:32AM +0200, Julia Lawall wrote:
> 
> 
> On Fri, 13 Oct 2023, Dorcas Litunya wrote:
> 
> > Hi Julia,
> >
> > I am trying to edit the above macro to incorporate an inline function as
> > macros with control flows are highly discouraged. However, I wanted to
> > inquire about some parameters in the FILL_SEG  macro below so that I can be able effectively
> > create a well parameterized function.
> 
> seg_hdr and seg_regs are not vealues, they are field names.  There is no
> way that you can pass a field name to a function.  You could pass the
> complete values &dump->seg_hdr and dump->seg_regs, but then one could
> wonder why not pass dump as well.  And then the calls would start getting
> a bit large.
> 
> Since this macro is specific to a particular function and is defined right
> before that function, I think it would be better to leave it as it is.
>
Makes a lot of sense. My other idea besides defining the entire macro as
a function was to encapsulate what the macro does in the code block as a
function as below:

#define FILL_SEG(seg_hdr, seg_regs,fmsg,dump) fill_seg_handling_error(fmsg,dump)

static int fill_seg_handling_error(struct fmsg *fmsg, struct dump *dump) {
        int err = qlge_fill_seg_(fmsg, &dump->seg_hdr, dump->seg_regs);
        if (err) {
                kvfree(dump);
                return err;
        }
        return 0
}

Not sure if doing it this way creates some sort of redudancy or may lead to some 
unprecedented problems or  can it be considered
as a way to make the code more readable and maintainable?

Dorcas
> julia
> 
> 
> 
> 
> 
> 
> 
> 
> 
> >
> > #42: FILE: drivers/staging/qlge/qlge_devlink.c:42:
> > +#define FILL_SEG(seg_hdr, seg_regs)                                        \
> > +       do {                                                                \
> > +               err = qlge_fill_seg_(fmsg, &dump->seg_hdr, dump->seg_regs); \
> > +               if (err) {                                                  \
> > +                       kvfree(dump);                                       \
> > +                       return err;                                         \
> > +               }                                                           \
> > +       } while (0)
> >
> >
> >
> > The fmsg parameter and the dump parameter, both
> > in the qlge_fill_seg_() function inside the macro, where are they referenced from?
> > Looking through the code, I cannot see global variables in relation to
> > this. Are they command line arguments or does is thekernel set to
> > provide them?
> >
> > Any assistance will be appreciated.
> >
> > Kind regards,
> > Dorcas
> >
> >
