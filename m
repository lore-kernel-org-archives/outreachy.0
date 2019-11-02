X-GM-THRID: 6754555674055671808
X-Received: by 2002:a19:895:: with SMTP id 143mr10004929lfi.158.1572683497722;
        Sat, 02 Nov 2019 01:31:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:4184:: with SMTP id z4ls68007lfh.9.gmail; Sat, 02 Nov
 2019 01:31:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyG+jX9lEUsPSduBBImr9TBZEGw5fcXG69Nhg/m6V60+jvtf6PJGByteVs+eImHqW7dYYam
X-Received: by 2002:ac2:46d7:: with SMTP id p23mr10043908lfo.104.1572683496688;
        Sat, 02 Nov 2019 01:31:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572683496; cv=none;
        d=google.com; s=arc-20160816;
        b=fPOIGyKtzbX6fe0v6YxTmqVAHVQRfTAdp0gMm2RlJZPk8k+fTZp9vTWGALw3kxkhsy
         lVhTCgXejbSMIsRWPdymHi2GbX7g1dHY8qGW1u3seeKjVMoXa2kkbcJoeBMjdWzNDFlB
         hlddWYhD3x9BmTgmXXL0wyhMvvguhPps4aUT0kZBJ6fbddngZfmW93aCx/XP4l2mNiIl
         vqnyXz6Y7JXIEC+/VqcoW8SFwVVviViHhg5kbu/DxIEvS+yWK5XblRfD27Mwq8/FoMaJ
         ggW0IuZlobh4gvl+pM7MwN++ftVXd2lK9K3qmljhHJgPnNKJ3pdEoLAh9uv8Pum2vKRm
         R7zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=4WGe82i43Rql5/p8PD0FAl+2+8XdLOD77OGgDThdOkk=;
        b=exxq2ZJYOlMDyPVhR7m2H6b3GXPS3udKAo0QNFN6SkLvNEPovSt4vGr2MtzFdvNJ+k
         R3FKuUCgDcF/8bCagWbyoe/OFtXekbmGG9/tIIckTEkzVLp9iX0XhjAhQYBU1u9r8kO6
         bZP3oEyz6E1G5ht2Zd/Hmfa6PW1qAMuvjf9tI9Z+OCHOj8367bro3gBHqi8tpoIXJujP
         qobCX+QjZXD6HUPYUQP4F9I3uO27sQIxNWaXsvux3ErOX9UeQz5PDJs5+2/elSUQiOrR
         BHNWpwQ2CUkRj9aoySvtJk3MWNeOa1bz/Nncvo7H1Yr9suIyHjspm6fHVyZr+h/NPlX1
         fv4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q25si469560ljg.5.2019.11.02.01.31.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Nov 2019 01:31:36 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,258,1569276000"; 
   d="scan'208";a="409974719"
Received: from abo-45-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.45])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Nov 2019 09:31:35 +0100
Date: Sat, 2 Nov 2019 09:31:34 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    saiprakash.ranjan@codeaurora.org, joel@joelfernandes.org, 
    Valdis Kletnieks <valdis.kletnieks@vt.edu>
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] staging: exfat: Fix parameter
 alignment issues
In-Reply-To: <fe316e694ea9c4aa370d3a8166a3680feb342682.1572666556.git.frank@generalsoftwareinc.com>
Message-ID: <alpine.DEB.2.21.1911020931170.8826@hadrien>
References: <cover.1572666556.git.frank@generalsoftwareinc.com> <fe316e694ea9c4aa370d3a8166a3680feb342682.1572666556.git.frank@generalsoftwareinc.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 2 Nov 2019, Frank A. Cancio Bello wrote:

> Fix alignment to match open parenthesis to comply in that way with
> the preferred coding style for the linux kernel. Issue found by
> checkpatch.
>
> Suggested-by: Julia Lawall <Julia.Lawall@lip6.fr>
> Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/exfat/exfat_core.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
> index f4f82aecc05d..b23fbf3ebaa5 100644
> --- a/drivers/staging/exfat/exfat_core.c
> +++ b/drivers/staging/exfat/exfat_core.c
> @@ -1503,7 +1503,7 @@ void fat_delete_dir_entry(struct super_block *sb, struct chain_t *p_dir,
>  }
>
>  void exfat_delete_dir_entry(struct super_block *sb, struct chain_t *p_dir,
> -		s32 entry, s32 order, s32 num_entries)
> +			    s32 entry, s32 order, s32 num_entries)
>  {
>  	int i;
>  	sector_t sector;
> @@ -1919,7 +1919,8 @@ s32 write_whole_entry_set(struct super_block *sb, struct entry_set_cache_t *es)
>
>  /* write back some entries in entry set */
>  s32 write_partial_entries_in_entry_set(struct super_block *sb,
> -	struct entry_set_cache_t *es, struct dentry_t *ep, u32 count)
> +				       struct entry_set_cache_t *es,
> +				       struct dentry_t *ep, u32 count)
>  {
>  	s32 ret, byte_offset, off;
>  	u32 clu = 0;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/fe316e694ea9c4aa370d3a8166a3680feb342682.1572666556.git.frank%40generalsoftwareinc.com.
>

