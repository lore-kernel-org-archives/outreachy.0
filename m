X-GM-THRID: 6664599067170963456
X-Received: by 2002:adf:da4d:: with SMTP id r13mr1015434wrl.26.1552987886124;
        Tue, 19 Mar 2019 02:31:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:7e52:: with SMTP id z79ls334100wmc.4.gmail; Tue, 19 Mar
 2019 02:31:25 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxc0jlgGowLlMnldFKBpGlogZfEZnWz+wkgb2JssL+J1HFzqH7BPxNuTjt3oXfpoYum2ThR
X-Received: by 2002:a1c:7611:: with SMTP id r17mr232778wmc.0.1552987885247;
        Tue, 19 Mar 2019 02:31:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552987885; cv=none;
        d=google.com; s=arc-20160816;
        b=mD+FMfI1K+Bd9lnGd+XS6f7/bCcGJfVRzjUDzIncmfa0Dj3Pf3yWUXqSer8Q0I7BxI
         +ZXNU1yqPR3btkV/9HrHh3rH0VotIveGehsau8OwxJ5uDqXyFsTrv3TOs6zsIHs8sN00
         gOR/yGrz8E1TgtCFSSk2apShvW9138HSPAj+sj7b5Rc/9gSXSVOQuYwBawLXbUOrQjW/
         6GJQFv8tgC7klpj5M1/u3I6NjKImVD7NFm7Ns/8V22czbBrE8m/29k25qUhoe+abdwWq
         m4zZZWOkoUS0fl6PxF8qwVS6t94VqYEf/TcoOUlq02Gwt+LED7/GTpYkC+EhX9HlQcHC
         h4MQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=N8MHqDz1v5h739yfd/yoU+/2IKjgWumfHY3gwyya9I0=;
        b=sbbO6rnCWEUHhtYTurDqKkn35FBo4mIyHxzjO6TfgocJAZ99JEo7Pb620V51OqakuM
         +5j0o+qsi2v0FgoXIkbyRiomehXs/ueEBggiPh6kWqq+67eWDnp3Ir2d/bxEVmiyBI7E
         gVNJ0/JSR/165yGNDG+a6Mz5CxoZVd1pwm+lIT2Oy/x8qNV/ViarIxz7bwPvBYgYLkv3
         e3U6Wji1tPf9+4QFpXC/gb5RshOJXJphFs5b/2tczW2YSrny8gvJDYBHWI4Z3Exf+GHE
         sL4ArC8IGbadC2HPV5y34vLvGs1atkMrOLIYA5F2gPX8NiJpZCXGGwmvXojk/8dDjxeO
         3Ulg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jhovold@gmail.com designates 209.85.208.196 as permitted sender) smtp.mailfrom=jhovold@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Return-Path: <jhovold@gmail.com>
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com. [209.85.208.196])
        by gmr-mx.google.com with ESMTPS id q1si462427edd.5.2019.03.19.02.31.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 02:31:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of jhovold@gmail.com designates 209.85.208.196 as permitted sender) client-ip=209.85.208.196;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jhovold@gmail.com designates 209.85.208.196 as permitted sender) smtp.mailfrom=jhovold@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: by mail-lj1-f196.google.com with SMTP id f23so2787792ljc.0
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Mar 2019 02:31:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=N8MHqDz1v5h739yfd/yoU+/2IKjgWumfHY3gwyya9I0=;
        b=L0Cfo4VPF/BEtEVPK0pG3wthK8xg0qfSqNy/zQPGrBoCaQnc4mdRjfi4U2qROnAn8V
         EIOfeRRXWm9L7mScXbbN8M0DsULD/n46d/D1s7IK3t/HlYlMdSocOZ6baSKoVaIAv8iN
         PbCuvDuT4DhIw6wAvOGp5DR7xqicIUr+wGIsHDpk39mDl2XM0FhQCIJEU7wJCvRMAVPb
         LQhJIHvgsSvJMfomfrmZS/1byjl0lM4YLmgEvpX2TF8O6yxjGJdrphFl0EexjI1UItoH
         iOa6KJhUPgfbzPYDintghvOeX2nbusILxyuqIHWLGeDlHISQBnoMZh5dSt6aQl3HrwXs
         htEQ==
X-Gm-Message-State: APjAAAW1g/K3QcuVlhLSPACvpybKgNTeP9ni+qb65Nj+91vVMv0dXcr1
	d0W6GYWkiK2/JMvglBUcM0U=
X-Received: by 2002:a05:651c:114:: with SMTP id a20mr10860172ljb.53.1552987884741;
        Tue, 19 Mar 2019 02:31:24 -0700 (PDT)
Return-Path: <jhovold@gmail.com>
Received: from xi.terra (c-74bee655.07-184-6d6c6d4.bbcust.telenor.se. [85.230.190.116])
        by smtp.gmail.com with ESMTPSA id j28sm36294lfh.81.2019.03.19.02.31.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 02:31:23 -0700 (PDT)
Received: from johan by xi.terra with local (Exim 4.91)
	(envelope-from <johan@kernel.org>)
	id 1h6B5b-0004g2-3o; Tue, 19 Mar 2019 10:31:19 +0100
Date: Tue, 19 Mar 2019 10:31:19 +0100
From: Johan Hovold <johan@kernel.org>
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Cc: elder@kernel.org, johan@kernel.org, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: greybus: Change NULL comparison to Boolean
 Negation
Message-ID: <20190319093119.GG6124@localhost>
References: <20190304174315.30222-1-nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190304174315.30222-1-nishka.dasgupta@yahoo.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Mon, Mar 04, 2019 at 11:13:15PM +0530, Nishka Dasgupta wrote:
> Change NULL comparison to boolean negation. Issue found by Checkpatch.
> 
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> ---
>  drivers/staging/greybus/bundle.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/greybus/bundle.c b/drivers/staging/greybus/bundle.c
> index e97b2b87ba47..376ca53f0d83 100644
> --- a/drivers/staging/greybus/bundle.c
> +++ b/drivers/staging/greybus/bundle.c
> @@ -32,7 +32,7 @@ static ssize_t state_show(struct device *dev, struct device_attribute *attr,
>  {
>  	struct gb_bundle *bundle = to_gb_bundle(dev);
>  
> -	if (bundle->state == NULL)
> +	if (!(bundle->state))

I noticed Greg already picked this one up, but there's no need for
parenthesis around bundle->state here (cf. state_store()).

>  		return sprintf(buf, "\n");
>  
>  	return sprintf(buf, "%s\n", bundle->state);

Johan

