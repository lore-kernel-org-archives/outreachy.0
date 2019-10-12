X-GM-THRID: 6746979289302827008
X-Received: by 2002:a05:6000:1283:: with SMTP id f3mr17254548wrx.370.1570905440485;
        Sat, 12 Oct 2019 11:37:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:526c:: with SMTP id l12ls3751611wrc.12.gmail; Sat, 12
 Oct 2019 11:37:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwpQWk2yDabZrRs61JnlHUsHo470UMx4x7AuvaqlZKq6FgiR7NgRDqbU8azSSv+LYYsMl1s
X-Received: by 2002:adf:ebd1:: with SMTP id v17mr10369250wrn.204.1570905439727;
        Sat, 12 Oct 2019 11:37:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570905439; cv=none;
        d=google.com; s=arc-20160816;
        b=c1vej9TsCEsUWZDsH6IWxuiQwZ2+kC/t68AW8hrydG4vlF7GI5FIHoQQ+9ObDUmRp8
         Q6yLWb3VZyWXB2cdii7g5QKPMMQm7s1O9VauqbsEfo5RpuaLDAnMJT0SAC1CnIGhD4PO
         enaRktjhwWa5+rcE8o3QlbF/SuUMdShItTkNzN3OKHZ13LEvNQAiTYocGxZmKzVLUKG3
         n9OFh+e+k/kcdqOnDr4B03uu6vixUbwI7Pkdk7HLjXwRi0cavB1LchnvoAJUseDCy3Qt
         h8iWnRC8yO8lQ7Y3SyZfPFAEmdOXJG8e0tyYnXkxs+PEy8p/3COw41ScMsItGg03LOVG
         z+sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=TP0YR/oZNZhg7JWnj8chdOqj3uN8DkhQ+NsPCM3Qp8M=;
        b=XlAc51WmBQ4qZ2JJwmFl7XoFJW+Ybqtlj/f4OjoTFS1QXDS5kDD1d/jsG/KcTIX1cZ
         73CJzOTkNJu11O20duVKDoCQmOrWWSpi7MxUUiYIUJqXmecyydCodbg1164SGUd7bw32
         w08/ZzOo0mXUgIa8bL7FTbR1Id1sW9TkhMDCluUnZwIjywzHUkcSLOzW8bvP8cnr2jO3
         UfK7hYc/iu6xkVsdVLUonpb1DQs/en3y1VD2Rabg+4Ie4at1pMFEAJ6w+rVUnFDSCpNR
         7Adb0tBW8XQRN9oILqRhElXSHbkjvLv63nvRYLeQRKdauj3BzBtNZuESFv/qyQc6Xg6G
         08CA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id f11si650259wrp.3.2019.10.12.11.37.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Oct 2019 11:37:19 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,288,1566856800"; 
   d="scan'208";a="322499662"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Oct 2019 20:37:19 +0200
Date: Sat, 12 Oct 2019 20:37:18 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Wambui Karuga <wambui.karugax@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v2 3/5] staging: octeon: remove typedef
 declaration for cvmx_fau_reg_32
In-Reply-To: <b7216f423d8e06b2ed7ac2df643a9215cd95be32.1570821661.git.wambui.karugax@gmail.com>
Message-ID: <alpine.DEB.2.21.1910122035380.3049@hadrien>
References: <cover.1570821661.git.wambui.karugax@gmail.com> <b7216f423d8e06b2ed7ac2df643a9215cd95be32.1570821661.git.wambui.karugax@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 12 Oct 2019, Wambui Karuga wrote:

> Remove typedef declaration for enum cvmx_fau_reg_32.
> Also replace its previous uses with new declaration format.
> Issue found by checkpatch.pl
>
> Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
> ---
>  drivers/staging/octeon/octeon-stubs.h | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
> index 0991be329139..40f0cfee0dff 100644
> --- a/drivers/staging/octeon/octeon-stubs.h
> +++ b/drivers/staging/octeon/octeon-stubs.h
> @@ -201,9 +201,9 @@ union cvmx_helper_link_info {
>  	} s;
>  };
>
> -typedef enum {
> +enum cvmx_fau_reg_32 {
>  	CVMX_FAU_REG_32_START	= 0,
> -} cvmx_fau_reg_32_t;
> +};
>
>  typedef enum {
>  	CVMX_FAU_OP_SIZE_8 = 0,
> @@ -1178,16 +1178,18 @@ union cvmx_gmxx_rxx_rx_inbnd {
>  	} s;
>  };
>
> -static inline int32_t cvmx_fau_fetch_and_add32(cvmx_fau_reg_32_t reg,
> +static inline int32_t cvmx_fau_fetch_and_add32(enum cvmx_fau_reg_32 reg,
>  					       int32_t value)

These int32_t's don't look very desirable either.  If there is only one
possible definition, you can just replace it by what it is defined to be.

julia

>  {
>  	return value;
>  }
>
> -static inline void cvmx_fau_atomic_add32(cvmx_fau_reg_32_t reg, int32_t value)
> +static inline void cvmx_fau_atomic_add32(enum cvmx_fau_reg_32 reg,
> +					 int32_t value)
>  { }
>
> -static inline void cvmx_fau_atomic_write32(cvmx_fau_reg_32_t reg, int32_t value)
> +static inline void cvmx_fau_atomic_write32(enum cvmx_fau_reg_32 reg,
> +					   int32_t value)
>  { }
>
>  static inline uint64_t cvmx_scratch_read64(uint64_t address)
> @@ -1364,7 +1366,7 @@ static inline int cvmx_spi_restart_interface(int interface,
>  }
>
>  static inline void cvmx_fau_async_fetch_and_add32(uint64_t scraddr,
> -						  cvmx_fau_reg_32_t reg,
> +						  enum cvmx_fau_reg_32 reg,
>  						  int32_t value)
>  { }
>
> --
> 2.23.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/b7216f423d8e06b2ed7ac2df643a9215cd95be32.1570821661.git.wambui.karugax%40gmail.com.
>

