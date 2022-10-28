Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C7E212286
	for <outreachy@lists.linux.dev>; Fri, 28 Oct 2022 19:25:50 +0000 (UTC)
Received: by mail-qt1-f175.google.com with SMTP id hh9so4083639qtb.13
        for <outreachy@lists.linux.dev>; Fri, 28 Oct 2022 12:25:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ohQkYglwwebNgXjZ/8sFkkMp9ZANmGXJQaV453gdPHQ=;
        b=F7De6pSIhcpzlROKRWrxwc4hrs3r2iJ+YJir4B3+esEXjsUlKf+9tSlaXd+UsefmIf
         oebkI4q/6uIwdrX2HGRoQxiGsfk+s9AqwJlhWhWmE/rBhJajZ6Rc2zPnsQnW4R1MYKuH
         ssfobtMRFp9tXRLsDyhnlDat0gManaZuXBKiEcSnrPGvc20dtplc/AJt80jOcRPJiWGt
         RHH8e2t26B6r4kwnX0D7tswkhN+Z1rzVHiGbLNnkQC6HYQQXwDrwZwdqoaVw7mdB6uPn
         SehytrWghCXNgfrVqNzuWnpUajXFn6qBU1lY8S/u1Wo/UCt3UFKLgHG1pnEKE3C/qdhZ
         Y8oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ohQkYglwwebNgXjZ/8sFkkMp9ZANmGXJQaV453gdPHQ=;
        b=qPsmQyz/mh2V48oF9qFyNfswWElBhd5tulhH4VlNqYXDxU6BvdMciL5T0x7+moAlAX
         2iX/JUfDWW9/p4fHctwAQYW+tpfzTg7uTC9+zPAEGbcJ9MmJo6PYsbjxt7wQWdSNcRT2
         9pifXtVyuI7IQyGoaFELiQe7lsT0cKD0/5xYR+mqH8IecLE8Pe3wr4edIyZy1Awmc79P
         bsweOsckVj6WmDZNH2mrtnWnAuQ/bELyLUTCed5lxtj/hw7U3D3/ZFF2xZ3HiM7X9fmd
         GMK3V2LxAPk93zegES0gLLtSv7dQ58cNelh+YwlsqN6LTWZj0/jGe0hgAxJmdAXxTEkv
         PuZg==
X-Gm-Message-State: ACrzQf3rXXj0ug/20hE2lqtc/uMD90xErRxvSVvNkM7D9j/JRWjxy/UF
	6Herk5nus1sTRm83Rz1iaQyCmn0z05mnNwwKIY5QVzJM1DhT/uYNTWo=
X-Google-Smtp-Source: AMsMyM6DDCW0X/I2UKRIZnaZm5VZJHznsU2/x6cCjXywXNLGjSBK9D58L+hSgaGxhqp2PDn/iKmh4UQiNXaOqzq89qQ=
X-Received: by 2002:a05:622a:147:b0:39c:dc0d:7d0f with SMTP id
 v7-20020a05622a014700b0039cdc0d7d0fmr910831qtw.281.1666985150006; Fri, 28 Oct
 2022 12:25:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAHJEyKWCVPLYvGB=oeDoZWz+uaBMrn2JhGgjN6pvdhjggOmAiA@mail.gmail.com>
 <Y1wiBgPE7sFSVQTG@aschofie-mobl2> <CAHJEyKWwg-9Aca5MEpp2+R7xt1C9Je5ooodr4Ca=2xuN4_EkgA@mail.gmail.com>
In-Reply-To: <CAHJEyKWwg-9Aca5MEpp2+R7xt1C9Je5ooodr4Ca=2xuN4_EkgA@mail.gmail.com>
From: Tanju Brunostar <tanjubrunostar0@gmail.com>
Date: Fri, 28 Oct 2022 20:25:38 +0100
Message-ID: <CAHJEyKVyQUedZwhem+1XsGy=h1JOYgn0_74jk8V2YH5V7zLVaQ@mail.gmail.com>
Subject: Re: Outreachy first patch wiki modification proposal
To: Alison Schofield <alison.schofield@intel.com>
Cc: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

On Fri, Oct 28, 2022 at 8:10 PM Tanju Brunostar
<tanjubrunostar0@gmail.com> wrote:
>
> On Fri, Oct 28, 2022 at 7:40 PM Alison Schofield
> <alison.schofield@intel.com> wrote:
> >
> > On Fri, Oct 28, 2022 at 07:23:47PM +0100, Tanju Brunostar wrote:
> > > After setting up my mutt with Gmail, I tested it by sending an email
> > > but it did not go through. After some research, I realized that Gmail
> > > no longer allows less secure apps. The way around this is to set up
> > > two step verification, then generate and use "App password". I would
> > > like to add this to the wiki, as this will save others from the
> > > additional work. Please let me know if I can proceed.
> >
> > Helpful tips are always appreciated.
> > Please post the actual edit here for review.
> >
> > Alison
> >
>
> My changes
> original: If your gmail account uses two-step verification, then you
> will need to generate and use App Password.
> modified: Next make sure two-step verification is enabled on your
> gmail account, then generate and use App Password.
>
> Tanju
link to the page: https://kernelnewbies.org/Outreachyfirstpatch#preview
