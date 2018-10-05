X-GM-THRID: 6608926139833384960
X-Received: by 2002:aca:f08b:: with SMTP id o133-v6mr2638447oih.7.1538762484888;
        Fri, 05 Oct 2018 11:01:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:530f:: with SMTP id g15ls4629716oth.7.gmail; Fri, 05 Oct
 2018 11:01:24 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61ycx+UgVsIepmxeFbl0xi6AvH5O7cnfY845DYPftk48yzRbNW0qypl27gKAO19Rgaj23n+
X-Received: by 2002:a9d:72cd:: with SMTP id d13-v6mr8243174otk.66.1538762484089;
        Fri, 05 Oct 2018 11:01:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538762484; cv=none;
        d=google.com; s=arc-20160816;
        b=YMTHzFTbXfRDSbGQh8k93SgDoLUHuOefpeYsJS2iZnJ5g5CRw1nEm8DP/GnNtZsMbp
         ww41B+9we12HpC2lTSW+yFwDNrHPFWGkRAL888s3kTiMIYF/BW5cktga7tW6s3LufakZ
         qw/Z4vzZlp/ri3VuF8+0kxydAYpWXhA3OKVRK2UkteQ/E5BvJZGrj1tRbPq/41g2MPBg
         6Gc3Neirs/3a/bjjdVZ84PDjEvUrskNiw8T1GMmM7RB9puV9ulPocvQYIdLpkgkW44Ub
         3q7g3/xxMdXlmrSjGkLU33kZhDx8lI7XnzIz2oTxtD5+UaNjonf/IuCUPu/Vw4wOwIj+
         L6WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=9qB90eq9DYZ+sStTRnJC06RpcZjOFNU0lWCfdRoP/44=;
        b=QCVdJuCiS7UhEy74Sz0MOVh139IhkXbCQ5RTykBcRRQL6mKfRJZd06jzRytUk9R+6o
         THjU1Oa658fFJrr89Lu52sUiDYzu1VqzhHZL68+2ei55S4vqsYbwtiBwL2S+4TXo72OZ
         pQM4frdcY2By1HG/1QtByKCOofmsxLFHACQEoIzvu/YYfJRpf8JwQTbS438Hc7rncmik
         HVKxqBc9+uccfVp3qmgSPexpk65KlLxq1U1AzlrdXBcLOhvCzjsnc5KBedVJcPK5ZKhE
         bR7/UhKxN0TpQlHIXgCx/jrVJJgZDi2XdOFnTI9au4OzWXkRX8MassWxJ1tXTMmd2yh8
         eDeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BFZiHomR;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himanshujha199640@gmail.com>
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com. [2607:f8b0:4864:20::42a])
        by gmr-mx.google.com with ESMTPS id e185-v6si441527oib.2.2018.10.05.11.01.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Oct 2018 11:01:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::42a as permitted sender) client-ip=2607:f8b0:4864:20::42a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BFZiHomR;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42a.google.com with SMTP id s5-v6so5422170pfj.7
        for <outreachy-kernel@googlegroups.com>; Fri, 05 Oct 2018 11:01:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=9qB90eq9DYZ+sStTRnJC06RpcZjOFNU0lWCfdRoP/44=;
        b=BFZiHomRvJ6WWZNjgYrCLbFeBFON6oHi0b0rQrRJlftkD9P2yRnC4329Nk4oDoRdZe
         4VsbLxQZwMbtVm+iee93y9atXXeE6uejCMIdrJXCj0S18RIhYzVMFxP0lO+y7n+tBdOK
         2LDS49aWBl9iWzuSfOv5IVEbakqzSM6COCURq2JfHhecO23cR2XrqmNC0O9zTamr4SaR
         2Hjch6xsi0qjTJYHkNdGNqcsG3op6LDD6+3g+FF5xpsfezTmWC+I+Ag4iKHLUTWuhrRo
         lclcMKwVZUFRy6468tyVyFUwRBhjojgsZOE6Xk0FWZf2dRFceKBE+s4+qpWgZuihEeo7
         /X3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=9qB90eq9DYZ+sStTRnJC06RpcZjOFNU0lWCfdRoP/44=;
        b=mfM+Ss4uBZREXp10K3j60Ak52N3zSdH+byMKKEaiuJ2zQuZDkcn1yBDqAev8mlaQ70
         K7Z7qHaTiFNsibly21cWigtBTyfKIl4mJTTJySg05RlR4js1ebQpOif7DKuFBwQWdrZH
         pbifM2UW0zNZsCWFUQ8J42u0PdFijKLpy0HWDlpgEuA60QMJ4B8Z7zMatmC3A1Eh9TFF
         Ge1U5lYqM6eWWZmW9CaZDZgGtGxa2ZzBiKM+JAPyrYKGL/ZpY8AOxejzZtn0llrSmLKr
         BWqf9BoW/A/O6rRWcpITBcNUxeki5tQSGBUv5LetJoUqlvIrxjhYz98Dj2FjFfm1U2jl
         4iyw==
X-Gm-Message-State: ABuFfojdJGPGaWjmaAwWApnA23KpGBWwl9+96s5tO116GXXVs1ahGwVh
	MNd2c4fdfWpVz6Tds2DoGNqXbkFP
X-Received: by 2002:a63:bf46:: with SMTP id i6-v6mr2794029pgo.378.1538762483586;
        Fri, 05 Oct 2018 11:01:23 -0700 (PDT)
Return-Path: <himanshujha199640@gmail.com>
Received: from himanshu-Vostro-3559 ([103.233.116.134])
        by smtp.gmail.com with ESMTPSA id m20-v6sm4333621pgv.93.2018.10.05.11.01.21
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 05 Oct 2018 11:01:23 -0700 (PDT)
Date: Fri, 5 Oct 2018 23:31:18 +0530
From: Himanshu Jha <himanshujha199640@gmail.com>
To: Ioannis Valasakis <code@wizofe.uk>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: erofs: fix indenting to
 conform to kernel coding style
Message-ID: <20181005180117.GB30924@himanshu-Vostro-3559>
References: <20181005172841.GA26217@kvasir.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181005172841.GA26217@kvasir.local>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Fri, Oct 05, 2018 at 06:28:41PM +0100, Ioannis Valasakis wrote:
> Cleanup all inconsistent indenting to conform to kernel coding style.
> Reported by checkpatch.
> 
> Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> ---
>  drivers/staging/erofs/data.c | 56 ++++++++++++++++++------------------
>  1 file changed, 28 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/staging/erofs/data.c b/drivers/staging/erofs/data.c
> index 6384f73e5418..ffd392e74803 100644
> --- a/drivers/staging/erofs/data.c
> +++ b/drivers/staging/erofs/data.c
> @@ -40,7 +40,7 @@ static inline void read_endio(struct bio *bio)
>  
>  /* prio -- true is used for dir */
>  struct page *__erofs_get_meta_page(struct super_block *sb,
> -	erofs_blk_t blkaddr, bool prio, bool nofail)
> +				   erofs_blk_t blkaddr, bool prio, bool nofail)
>  {
>  	struct inode *const bd_inode = sb->s_bdev->bd_inode;
>  	struct address_space *const mapping = bd_inode->i_mapping;
> @@ -53,7 +53,7 @@ struct page *__erofs_get_meta_page(struct super_block *sb,
>  
>  repeat:
>  	page = find_or_create_page(mapping, blkaddr, gfp);
> -	if (unlikely(page == NULL)) {
> +	if (unlikely(!page)) {

This change is not an indenting change.
"Send one patch per change!"

Make this change a separate one and don't mix with
indenting change.


-- 
Himanshu Jha
Undergraduate Student
Department of Electronics & Communication
Guru Tegh Bahadur Institute of Technology

