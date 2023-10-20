Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF059C8D5
	for <outreachy@lists.linux.dev>; Fri, 20 Oct 2023 06:52:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iUPyoJ9a"
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-6ce2d4567caso327423a34.2
        for <outreachy@lists.linux.dev>; Thu, 19 Oct 2023 23:52:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697784720; x=1698389520; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=toafwKT7RqJb9OKCZ2XPVllawnSlogOR2neMKCs4W3Q=;
        b=iUPyoJ9aOEaS03RcJjsmQrxL38+dz1os2bbOfTtAoZuI2fM1fv5n3IMma2IMd7aOPs
         KB3BIO1WzSsbXSH3YMWJ4cBTXXTclY8UyaZAJGtCWxYTaigMbQqzqxYTQL8giV3R+E6K
         WfvhWl/1zjVoMqHnx1XyZmuHhg6zcxRPaHyMgnZ1gaPb6kxoXcKcwHWvNrzEBPNSmqCm
         JbutrQOQg2iRaEsk9+tOElRjMhT0BBPl8WOYRELSpoHmTcmHedKXeRABKw+U3ApmE/Ue
         fOOpgOO5G2F+BjyQf07ibz0gFSWcJqtmxFmF+pcsivsur6jkyonk09FoyQ5XoCw7VtHJ
         10mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697784720; x=1698389520;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=toafwKT7RqJb9OKCZ2XPVllawnSlogOR2neMKCs4W3Q=;
        b=riSM5BzSLQPS49KGWd+JGaofvWhFzocMEjCl4upW48GGdVEBT8d0vMsFB5zrr5P32a
         JTRS65fWTuehmSX+KFQ//02YxnPMUupyVXIUfpu93ngVipvzIcA0jxpNI1R1Hp40c2Tp
         lB0yelDy69MHyOQQGrpl+TlY26/i64qh1phdV+ao9x00IFGop1xCU9RsR/E8Z16fRLO3
         4hVlvyGkRMp1LOlj/VxA7nG/bwqOlz/A5B7WgZt19zn8h3Lk4rb+8mTzpYZMW9EjbbYU
         QjpDuWxze9FLsfoPkGPreg12lXD4jPVc4x3PbgGOFAmZDHRLNcc++akHJt8+HpFYmnJ3
         YjHQ==
X-Gm-Message-State: AOJu0Yyk2U6+0IEVWQs4FxiGhJlLGhWWW1gkB94TueQ2HbOOjSIfY4vq
	dzX7m7yUMVUXIZBPsZHxg6M59RBgsO9wrN5nM9g=
X-Google-Smtp-Source: AGHT+IEmY/k4lAUhMmrdwxDLokRdKts1FQh5/Qk1nyO3ghlgAcDQ59VFhq6FqdFnCry7UjXeQ3f7otbJh248InCdQGg=
X-Received: by 2002:a05:6830:264c:b0:6b9:6a96:698 with SMTP id
 f12-20020a056830264c00b006b96a960698mr1240671otu.7.1697784719882; Thu, 19 Oct
 2023 23:51:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <4ea53aff-32c0-dfe5-8ede-7aa22c9875b4@inria.fr>
In-Reply-To: <4ea53aff-32c0-dfe5-8ede-7aa22c9875b4@inria.fr>
From: Calvince Otieno <calvncce@gmail.com>
Date: Fri, 20 Oct 2023 09:51:48 +0300
Message-ID: <CADFX3OQKeCbq=PvQfpjJBOa8cdrExQw39b5nbq2DPW3FZL=kTw@mail.gmail.com>
Subject: Re: Outreachy status
To: Julia Lawall <julia.lawall@inria.fr>, Deepak <dvarma04@hotmail.com>, 
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>
Cc: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 20, 2023 at 8:28=E2=80=AFAM Julia Lawall <julia.lawall@inria.fr=
> wrote:
>
> Hello,
>
> Thanks everyone (both applicants and reviewers) for all of the
> contributions so far!
>
> There are 10 days left in the contribution period.  If you have a good
> number of patches either accepted or in the pipeline, please contact
> mentors for projects that you may be interested in.
>
> If you are interested in more than one project, please feel free to
> contact more than one set of mentors.  In your final application, you can
> apply for more than one project.  But it would be helpful to rank them, i=
f
> you have a preference between them.
>
> I look forward to seeing your future contributions, and let me know if yo=
u
> have any questions.
>
> julia
>

Thanks Julia,
I have had a  good number of patches accepted.

When reaching out to the mentors, should I Cc: outreachy@lists.linux.dev.


--=20
Kind regards,
Calvince Otieno
