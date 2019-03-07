X-GM-THRID: 6665751809762525184
X-Received: by 2002:a1c:f107:: with SMTP id p7mr1184928wmh.12.1551992079980;
        Thu, 07 Mar 2019 12:54:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:b641:: with SMTP id g62ls56933wmf.11.canary-gmail; Thu,
 07 Mar 2019 12:54:38 -0800 (PST)
X-Google-Smtp-Source: APXvYqzX+9SwFnebptZN3BHGsMWOVxuzPR4Mm9vUOGFFbEai8NpxfrUvIsYlJZRd9BNfoMfQ6iNy
X-Received: by 2002:a1c:3545:: with SMTP id c66mr168951wma.2.1551992078735;
        Thu, 07 Mar 2019 12:54:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551992078; cv=none;
        d=google.com; s=arc-20160816;
        b=iaMS5JRFW4eIltplq/A2vtsYFdmelB2bnjMCxKkGf5YLGphJq1gjQdKgOffn/1u211
         auEp9ySGBuQHcNUqa0dCvKAO4YBLO7IJGMdrjvks+C/2svnkU25dRJUFdRncwWlqK8MP
         +KDuDHNr0/0hhrwCJZ2flcEqoFppWDu6QDO5D6E6LNoE02ExWdhe0ZkUM78QkS0+dPWz
         YchgHxSjA64uIq5/XtY8WJMX4iXVlietU0Ayabp7GI9HD9yuZMs2uN7/cJDQdr0fWYn+
         KbRjWu8BmW8StqGp60ggfn8q9NiOmwPIJX15w4VMXwNtVj1BIwdhvQ8rnWIez+ElMbYV
         r93A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=LxLrxi57kdQxW+c/vZvOBCh742/XlT+opqUOs27c8ug=;
        b=M9t5jdB3Aa5JiIgcFZJS2xv0vo1VMxgZnJJUmjBPKC3yupi7To++N0G82gYC1KvH+w
         szcvRuVFLfQfkIXgKMxizMTtOuDGrAmOy32+Hqdp8HaBG9rfiT6vt8tGn/mOlGgyOnBr
         Qk3LnwR/pcnTeT6OK6SuTpXh1gz8flJGwvZSyXRsmvpssdah7XryQf1WFSAt6W+/Yvk8
         fhqCFNuz3yTxd/X0mvVWF6nahq5KCeCdwXp0GXbiQbTEkL5QmvahudW2WBe01DVsW/B2
         mxXjdIXwgjqwP8oERl3iMP5+d0iCyQbMk1VxXzTrHZ6tGfXtKuaKgpbgeeCfBYlrA+sO
         1lew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 109si225594wrb.0.2019.03.07.12.54.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 12:54:38 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,453,1544482800"; 
   d="scan'208";a="372411320"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Mar 2019 21:54:38 +0100
Date: Thu, 7 Mar 2019 21:54:38 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Debleena Sen <idebleenasen@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: vboxvideo: Do not return
 -ENOSYS
In-Reply-To: <1551991259-109878-1-git-send-email-idebleenasen@gmail.com>
Message-ID: <alpine.DEB.2.21.1903072153150.2558@hadrien>
References: <1551991259-109878-1-git-send-email-idebleenasen@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 7 Mar 2019, Debleena Sen wrote:

> New instances of ENOSYS are errors. Refer /usr/include/asm-generic/errno.h
> to find correct error code to use in place of ENOSYS.

The second sentence is strange.  It would be better to just put the
following message, and then add something at the end explaining how you
chose -ENODEV.

julia

> In vbox_prime.c, replace all occurrences of -ENOSYS with -ENODEV to fix
> checkpatch.pl warning:
> WARNING: ENOSYS means 'invalid syscall nr' and nothing else
>
> Signed-off-by: Debleena Sen <idebleenasen@gmail.com>
> ---
>  drivers/staging/vboxvideo/vbox_prime.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/vboxvideo/vbox_prime.c b/drivers/staging/vboxvideo/vbox_prime.c
> index d61985b..702b1aa 100644
> --- a/drivers/staging/vboxvideo/vbox_prime.c
> +++ b/drivers/staging/vboxvideo/vbox_prime.c
> @@ -16,7 +16,7 @@
>  int vbox_gem_prime_pin(struct drm_gem_object *obj)
>  {
>  	WARN_ONCE(1, "not implemented");
> -	return -ENOSYS;
> +	return -ENODEV;
>  }
>
>  void vbox_gem_prime_unpin(struct drm_gem_object *obj)
> @@ -27,7 +27,7 @@ void vbox_gem_prime_unpin(struct drm_gem_object *obj)
>  struct sg_table *vbox_gem_prime_get_sg_table(struct drm_gem_object *obj)
>  {
>  	WARN_ONCE(1, "not implemented");
> -	return ERR_PTR(-ENOSYS);
> +	return ERR_PTR(-ENODEV);
>  }
>
>  struct drm_gem_object *vbox_gem_prime_import_sg_table(
> @@ -35,13 +35,13 @@ struct drm_gem_object *vbox_gem_prime_import_sg_table(
>  	struct sg_table *table)
>  {
>  	WARN_ONCE(1, "not implemented");
> -	return ERR_PTR(-ENOSYS);
> +	return ERR_PTR(-ENODEV);
>  }
>
>  void *vbox_gem_prime_vmap(struct drm_gem_object *obj)
>  {
>  	WARN_ONCE(1, "not implemented");
> -	return ERR_PTR(-ENOSYS);
> +	return ERR_PTR(-ENODEV);
>  }
>
>  void vbox_gem_prime_vunmap(struct drm_gem_object *obj, void *vaddr)
> @@ -52,5 +52,5 @@ void vbox_gem_prime_vunmap(struct drm_gem_object *obj, void *vaddr)
>  int vbox_gem_prime_mmap(struct drm_gem_object *obj, struct vm_area_struct *area)
>  {
>  	WARN_ONCE(1, "not implemented");
> -	return -ENOSYS;
> +	return -ENODEV;
>  }
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1551991259-109878-1-git-send-email-idebleenasen%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

