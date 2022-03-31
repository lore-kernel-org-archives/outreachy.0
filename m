Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D44AA2D
	for <outreachy@lists.linux.dev>; Thu, 31 Mar 2022 17:40:59 +0000 (UTC)
Received: by mail-ed1-f41.google.com with SMTP id b15so160390edn.4
        for <outreachy@lists.linux.dev>; Thu, 31 Mar 2022 10:40:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=06Y5HLpHzhbCyHC4LhUz4Fk/dm923vQW8NuIkqG7r2M=;
        b=ArrjSh7FQv9Y0LjwS9ndeYeHHgtboVVXUljG/VF8JeMyDFfedqxX9LLgOP5gzALgzz
         1DdYd33MUt/iOz6JbzbGSOTGm4gz88zpmwpnWWufDrfsH9/u+8dpSzYiOsQ2lMFk7Tp9
         vIxbEt5IUv3IRgw7UZX0ogZqQiiu/OFJ9yoOd1YI+tTf+6k5b+wwbfUdT0gxblKf2Nnt
         gDoSV/ZQEKu4Hy/leCj7ysEq1l2E9ESdf7NOgRuyYoi2FfWAFfET2AModQh40WKp25jZ
         W5c87P5f3Lz7FUbNbFPdnvxT2cF78p+mS0XRQpC8jwligYfoivpVCgTk2okS4JXYEYDk
         dp+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=06Y5HLpHzhbCyHC4LhUz4Fk/dm923vQW8NuIkqG7r2M=;
        b=eo/Dghcd4juuoMsbZ1szzQPy4Y+yeNsX8EZ+RF/9eUvQtxT4nrp0gwS2NvuJ/7kMQY
         o4B4fGTCYShPtcYdLZ3xOvDD5hXs4EMqL2Dx/2kwNukXufNJmynslCT7NoxIJzLoCeUL
         2wDhORZqNQmy303gUDHwbDfQNnZrRR1RW+1JAc5T8nxFsVnMFHT9mMYPXDD7DW3uFagH
         BLSaN5ZPMePmB8MQRea8hKUwSn3MVuoyk+FkXsbHXVvjw4WW4G4y0l3PWiz3/+UFZz3z
         LjypWNoXP+li4IDis2m7xrnOUqlWGhYCGq30OOEDWs79ZusJGTmbHepJ84Lxsy+VCbjy
         fRrQ==
X-Gm-Message-State: AOAM533gpATU0lMgKhrihfji2kJM/EoRBnMfQy+9L+fUMan8xm0UPz8D
	KZbxzAsx8avHDuu/PemRaIqRR4Mz4gA=
X-Google-Smtp-Source: ABdhPJz7q4WSh948mSN/sYHOEy+fiq+WiXrqvdpFiLn3nOhoMe/r+mNot+lx6N1l5QySR7863u1RSw==
X-Received: by 2002:a05:6402:2747:b0:419:4817:ba22 with SMTP id z7-20020a056402274700b004194817ba22mr17207609edd.253.1648748456954;
        Thu, 31 Mar 2022 10:40:56 -0700 (PDT)
Received: from leap.localnet (host-95-249-145-232.retail.telecomitalia.it. [95.249.145.232])
        by smtp.gmail.com with ESMTPSA id gn3-20020a1709070d0300b006e1036666bfsm15512ejc.223.2022.03.31.10.40.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Mar 2022 10:40:55 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy@lists.linux.dev, Jaehee Park <jhpark1013@gmail.com>
Subject: Re: patch idea for wfx
Date: Thu, 31 Mar 2022 19:40:54 +0200
Message-ID: <2109950.Mh6RI2rZIc@leap>
In-Reply-To: <20220331141434.GA1104155@jaehee-ThinkPad-X1-Extreme>
References: <20220331141434.GA1104155@jaehee-ThinkPad-X1-Extreme>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On gioved? 31 marzo 2022 16:14:34 CEST Jaehee Park wrote:
>
> [...]
>
> I'm not entirely sure why container_of structure is helpful. But this article seems to say it makes runtime faster: http://www.kroah.com/log/linux/container_of.html

Hi Jaehee,

container_of() is widely used in Linux kernel code. It's a macro whose purpose
is to return the address of the struct that contains a given field. Users pass 
a pointer to the field, the name of the struct, and the name of the field and 
it returns a pointer to the embedding struct.

It's faster than other means because it's a macro that makes subtractions on 
pointers.

Many in-kernel data structures, like the doubly linked lists API, use it for
convenience and type safety.

Regards,

Fabio M. De Francesco


