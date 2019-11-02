X-GM-THRID: 6753896393761357824
X-Received: by 2002:a37:4e44:: with SMTP id c65mr9083834qkb.357.1572691111862;
        Sat, 02 Nov 2019 03:38:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:c82:: with SMTP id n2ls1881449qti.0.gmail; Sat, 02 Nov
 2019 03:38:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwSoUPgrXce911H2MlLdTMyq/M47M6rBSdBIB7TffRHO5Ri+Qk5sg4EaJ/CFOjuhtuaSV4s
X-Received: by 2002:ac8:34a3:: with SMTP id w32mr4129552qtb.9.1572691111010;
        Sat, 02 Nov 2019 03:38:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572691111; cv=none;
        d=google.com; s=arc-20160816;
        b=xMYTEmdHxm6V/U3c/aVTIYMd3jj99vvBNaKQxDwLycYdzp4JmxthyYL893/6IoXJhO
         v8kHyz2gBQKg5VcBBOxjg/Ql7c7L2bQc8pqf8uRxKenRUGiSmt6EiFJv89/boHF06p/n
         AMrv/TT/kH+Io16+KSNOM2LsHMPNY6KRM+RVg0d4pHM2oVYKnnOr7tvJfn1mNJrtY+7M
         8ruEmzLuXrAiEBX3c3W0IIq1SqijgaIl4VTJC0XQWfL/zb97S4OUDQVCevAAIXHW+4qz
         03Oquyxd4EwEko6CQ7DG69pnE5w8YDn0sD7orfmpealV7Q+axsANt/CaTZ8s4qkGbsl1
         Sq3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=fDsqS8f3Zn/DaBR1eDsdGVecI7w+pxAHEn7TJVyr5oI=;
        b=C3SPUmx9e65KhzOF01+v7vIsMC1fT2PvdNYxyVO0Up518uem26iA3Rm0MBGDJ/aF10
         6pZneEF5UwdcPVcqifaD+EhPawadlnq8Y2+YPeGV35WDDef4oi12zz17yUSry37f0YNv
         1kxQTtn0YVjnGgCAmeZJfsx1mYSQfDB71mdjWS8WWaoo0tvEDPLvL46SqBEYbQwn5qSh
         QKDXSX6OGYBId9+cm0fqQyJMw1I8NXpHJpWc1kgd4MfLT1QeIlsDTK4SrnrE2Cg/5Os8
         uWsYhRUOh7btEoAQvvlJ5Kbya6gxhA1+KFvo1AF+iBd84jOe7cu3ho6u7dbZhWeOtaFY
         fQ8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="VBo/xfOE";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z90si643025qtc.3.2019.11.02.03.38.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Nov 2019 03:38:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="VBo/xfOE";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 626E220679;
	Sat,  2 Nov 2019 10:38:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572691109;
	bh=nCLC54l2bjCBfFYA0rb3hNpZUbH8EH+wf6eARSrZJLs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VBo/xfOEbv3aNotg11Led0rypjt6Ykm13VKlDIA/81ZLzv2f5MEQbT1Tecv4RqrcP
	 ehITPd8S9u8m47tIllbyg3kqOCb8gbVM+J2lAPSKX0fGhT9TaY5Pk65lHeTD7EMVmP
	 /4xKiyMUxRmk3T5iblbaIYqNl+cA38G8tXUOVY9c=
Date: Sat, 2 Nov 2019 11:38:27 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jamal Shareef <jamal.k.shareef@gmail.com>
Cc: outreachy-kernel@googlegroups.com, eric@anholt.net, wahrenst@gmx.net
Subject: Re: [PATCH v4 3/8] staging: vc04_services: Remove struct typedefs in
 vchi
Message-ID: <20191102103827.GC135025@kroah.com>
References: <cover.1572652827.git.jamal.k.shareef@gmail.com>
 <5989023c1a64e0e5c8d56ceb0511b4f49199703d.1572652827.git.jamal.k.shareef@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5989023c1a64e0e5c8d56ceb0511b4f49199703d.1572652827.git.jamal.k.shareef@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Fri, Nov 01, 2019 at 05:04:15PM -0700, Jamal Shareef wrote:
>  // Opaque handle for a VCHI instance
> -typedef struct opaque_vchi_instance_handle_t *VCHI_INSTANCE_T;
> +struct vchi_instance_handle;
>  
>  // Opaque handle for a server or client
> -typedef struct opaque_vchi_service_handle_t *VCHI_SERVICE_HANDLE_T;
> +struct vchi_service_handle;

So you are changing 2 different typedefs in this patch?  I asked you to
break this up into "one change per patch please".

Also:

>  //Callback used by all services / bulk transfers
> -typedef void (*VCHI_CALLBACK_T)(void *callback_param, //my service local param
> -				enum vchi_callback_reason reason,
> -				void *handle); //for transmitting msg's only
> + typedef void (*VCHI_CALLBACK_T)(void *callback_param, //my service local param
> +				 enum vchi_callback_reason reason,
> +				 void *handle); //for transmitting msg's only

Why did you indent this by 1 space?

I took the first 2 patches here, please fix up and resend this as a
totally new series.

thanks,

greg k-h

