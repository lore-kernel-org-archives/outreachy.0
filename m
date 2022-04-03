Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 740567A
	for <outreachy@lists.linux.dev>; Sun,  3 Apr 2022 15:40:20 +0000 (UTC)
Received: by mail-pl1-f174.google.com with SMTP id o10so372623ple.7
        for <outreachy@lists.linux.dev>; Sun, 03 Apr 2022 08:40:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RpQYISdRRpLfVyXfATp6DsH9qKThvuoblW9QuxPtZhk=;
        b=p2t+8AyaV/nupgfcvLfH5phQtBLmV04JWTYo2jrW8To+e9NikL8siFZ2Y5IE259rdH
         78BsWqYntMPUIMIZaZ3NndRxtDGG4cgScjA/EyVuRHwJQBVdv6mxVVvAzsRWyjOKNQyU
         H/J7soCLoXx5EZhfSZ4GIIFebbgoWbYfMpEnJvS0Q72Mit4IRk4tYWC/CeHK5EEk22d1
         p/4k4To1K2X7MvkDU3n7qcRCS4PR3A5VA56XkqGDcd6n/ZEMsEMGI/I61kTm7b2dwmIb
         vn1ARwbWoM97GElBzxqFTX0M792X0oSDV2n0GvMJLcq4OLrWJ8dwk/c9FS4iO84+v1ed
         bIpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RpQYISdRRpLfVyXfATp6DsH9qKThvuoblW9QuxPtZhk=;
        b=qklufqVxi2nIHzHk7SE9G1+Th80IqUHpdapF0nvtPFFG6BU3MRzQ8fJrO0HX+Rgqq4
         8l7ofMF0kxTZnYDikn8ZU9OzY6wdxfeA6kgT+TsgwAZkads2lCHpUnRKA+PaWvqHNmMf
         mkga9iUBNbSFxjD4B6nIHiB//4ZqcRreCsk+v3ePHDUpn3XbuBJ0exa7DjXs2UF1L6Dv
         54/4Zsxx2QaiCAfEt6HnN3UmESSMXoJQLOuaByCGyTFfD6ZpSkvPV5Mletn5dXDd5XI8
         YHLQHRRS/cjdkU2bqFIk1bKtbDFUxu7jYZE9Tr6SDifvLJ9AhFJ29YuVxpfK5r5S+1eW
         NkCw==
X-Gm-Message-State: AOAM531DHr3+1CN94q9gUmQDNsRvmB4IpiKQfThwW9rBxz8TZv2s97Eh
	y520s6xuy323SvvgEksoANBCGW38pdWvaCRJfSOVhVWY
X-Google-Smtp-Source: ABdhPJwJiBdUwtCvO0ttzN2ukbWIE1zHbRVRayG1DPdqj1zRK765T7onFArSPKNgM7NTzjOpLu9QZ4PYBlrGZNWE85Q=
X-Received: by 2002:a17:90b:3e8b:b0:1c7:852d:e843 with SMTP id
 rj11-20020a17090b3e8b00b001c7852de843mr21688286pjb.244.1649000419766; Sun, 03
 Apr 2022 08:40:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <cover.1648840991.git.sevinj.aghayeva@gmail.com>
 <1a9f181f7f30f71c03e6e88df9fb8c17a298a192.1648840991.git.sevinj.aghayeva@gmail.com>
 <Ykl/4mIsSzaPRr+y@kroah.com> <CAMWRUK4BpTFf8fGoANjjOEZ2dxCws=QPLPJ166JPgnsdsy+pmg@mail.gmail.com>
 <CAMWRUK43UO-nT3-8G1GBt9ZzTqGo_j2=_YyE686-8H01ub3meQ@mail.gmail.com>
In-Reply-To: <CAMWRUK43UO-nT3-8G1GBt9ZzTqGo_j2=_YyE686-8H01ub3meQ@mail.gmail.com>
From: Roopa Prabhu <roopa.prabhu@gmail.com>
Date: Sun, 3 Apr 2022 08:40:08 -0700
Message-ID: <CAGe6so8TdMGFzuGGwR9n5KS1iQjPsxq+VUMp1HgGBn5=eC4b-g@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] staging: rtl8723bs: remove redundant braces in if statements
To: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
Cc: outreachy linux kernel <outreachy@lists.linux.dev>
Content-Type: text/plain; charset="UTF-8"

On Sun, Apr 3, 2022 at 7:25 AM Sevinj Aghayeva
<sevinj.aghayeva@gmail.com> wrote:
>
> (Sending this only to outreachy.)
>
> I just did "git fetch origin" and then "git rebase origin" while I was
> in the branch that didn't apply to Greg's tree. I got a merge conflict
> in ext4/super.c. None of my changes have modified ext4/super.c, so why
> do I get a conflict on this file? Can someone please explain?

The file on your branch is still different from the one on
master/origin even if you have not changed it and git is not able to
merge the file automatically.
rebasing your branch often with a master usually helps.
Maybe others on this list have better explanation/suggestions.

>
> Thanks
>
> In the meantime, I will make a fresh clone...

good call. You can also resolve the conflict by picking the latest on
master since you have not changed the file on your branch
