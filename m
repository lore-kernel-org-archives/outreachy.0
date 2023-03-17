Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADEB879C5
	for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 20:01:32 +0000 (UTC)
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-54184571389so114054097b3.4
        for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 13:01:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=paul-moore.com; s=google; t=1679083291;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7w148gYhvmty/YDoWPlwy5MtFXo57SiasfH6RlraIgY=;
        b=HN5GLmvxAwJKjHee8c1URNqOvTFJQ2PLkb+zi5SwQKibwuTHjDvo80Xom1bBQVv5Nl
         mCfXMqMgbtZNOhfGyujkG0wFQbom9voBUktigXMxWS7ha761bNKfKuXYRNXpQZBvwlNn
         FOFyX1xbH7V8I1kNmCboqIySiKGOIABzGEvgyZE9GDs2K/5XHcm/cEy81djnBCbFiseF
         rPaZSM/yaa1m5BDm+GCyosInobDo18DlvqDO0WoufeGhf5ZyfluWePkwpCB1EQATsQlc
         g9cd2Gv/vTkF8ySNnKMxmr9ir6HtsYblsPbl2wnIZQ20PQpKJEIpUg2pggYTEMX+T19h
         h1zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679083291;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7w148gYhvmty/YDoWPlwy5MtFXo57SiasfH6RlraIgY=;
        b=N9IrRPJzx8KPF8hDyc8bWWmyOz7+M3MJnW/xmzWZ1IUST4JZh6jVPGm2MBRvy6GDMH
         PzCP1fwQV5gBVtd/yEZPwb/TpykyFYHlOuw3R/N7DEnO0inRHbOKCQfo2Oibe4Lke6lm
         HRNDDdLjDI7Jp4CZSZAPJo5/PWESkCbER4XnIuFLtV0DIWfZ3s56DucSAHbgsJS2Z/sb
         276gHb+6QQCijBaxPB3MW8NXhpptSkaWaGbEpp4aFJL+kj7kEEP3O9YLLYQIQaFcwlJT
         KtntSOSG+Ug2lAdgY9vagf/gUzTjqBOXSv0TvsNijziZgWp9xW3WUVDMtbEmuA8CD6FX
         Wheg==
X-Gm-Message-State: AO0yUKW+mL6yQEmMKI9yIkBL5iC3Rzfg2ahsQ6DzDpXOgzWxTD7XY5G9
	6otwJTISEslknmd4Ll+ij/1AiYGyamAILPkK6kIj+Zl70OIsAsyQEw==
X-Google-Smtp-Source: AK7set/gfEpxHblKtkMQkKihc4UpE94NunvltYwi8yUrCE89/NdQIdU3TIty/DuCMKnneNgGlWv38HdwWYDJiCyR8uQ=
X-Received: by 2002:a81:af14:0:b0:541:8291:5237 with SMTP id
 n20-20020a81af14000000b0054182915237mr2699710ywh.0.1679083291496; Fri, 17 Mar
 2023 13:01:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <20230317191154.GA57413@pikachu-Z97-D3H>
In-Reply-To: <20230317191154.GA57413@pikachu-Z97-D3H>
From: Paul Moore <paul@paul-moore.com>
Date: Fri, 17 Mar 2023 16:01:20 -0400
Message-ID: <CAHC9VhR+wc3K3kvKswB2Uer0hsuy5Hxje3XS11k9YGQhvYa+1Q@mail.gmail.com>
Subject: Re: Patching spelling errors
To: Mark Heim <questioneight@gmail.com>
Cc: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 17, 2023 at 3:12=E2=80=AFPM Mark Heim <questioneight@gmail.com>=
 wrote:
>
> Hello Outreachy,
>
> I have managed to identify at least 50 spelling errors in the Linux
> Kernel, but possibly as many as hundreds using grep (I have been using gr=
ep
> to wade through enormous amounts of text). If that is a worthwile
> fix, or if anyone is interested in teaming up to dig through them, please
> message me. (I am estimating there are about 15000 cases to dig through
> by hand, but I won't know until I'm done grep-ing). Thank you for your ti=
me.

This won't necessarily ease the burden of reviewing all the spelling
errors, but have you tried codespell?  I'm guessing there are far more
than 50 types of misspellings in the kernel code ...

https://github.com/codespell-project/codespell

--=20
paul-moore.com
