Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2354C7E
	for <outreachy@lists.linux.dev>; Tue, 24 Oct 2023 01:09:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ccmbld3r"
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-41cb76f3cf0so24657851cf.2
        for <outreachy@lists.linux.dev>; Mon, 23 Oct 2023 18:09:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698109754; x=1698714554; darn=lists.linux.dev;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MN+WxtLj2vDVQ9l32ze3K/GGgRcQ0EV79C80vjQsCiQ=;
        b=Ccmbld3r7d69sTkv2zEDXuwBrmp+n140MVPdaLRJZLUtuxt3qyWdNY3GOSNh9x5QAB
         S8Pwbi7i5AeBAOjHkuvD9P2rLPVL/ac7uxCaDHafgYtG3akT+PQInDQlHMzOKbp6VXxv
         DbWUYJ1bLSYLRnzBpT2scqnmAbtQuQkotxoaeaqME++WLckgb9nywO2dGxN70Rj/hAb8
         MAMcZ81O3p3z+c7opGzvoelwKrAPliBGNIuygAuBaelX0AduTqD6NQr6Bpy3ERXODL6F
         NHTzU4+S9o1PMDa6FLAYi3CzU66x5C7GvWP0lY5RUUagm5Yjnv3KjjFDaaF1RzSE6Syz
         uiog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698109754; x=1698714554;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MN+WxtLj2vDVQ9l32ze3K/GGgRcQ0EV79C80vjQsCiQ=;
        b=ULcdh6e/DDe5e2rE8qIyvgJ//gp5YZfGA3I0TlaYgpC6Dgzi5LPJRi2HDjHVg4cO5+
         NMiggfR25UQSnSnO4k5r8/Xa6ZLLjLecgOIWdKdS7lxiWjqT5H0Oo+ljfO5t3PpNPDUj
         nSoSsTSVkMHJsJzFfZUqlEry6IErJXOSlJVmxKzgGZHznpEKyVEv0pmBT5EQOoKjIzz2
         jVuKb3rKfjxMq0O3I3VgwxAQhHFfiQvAk2tkTZGU0Ck4bPuThwTggEx3Y9bALIfR77rl
         KsSmnrEq1UD7jbq9C/puEatKb5spuqJU+gdhOcmMq8lp5Fg9gYlarZjtu9gp8OCeVJn/
         jryQ==
X-Gm-Message-State: AOJu0YxQ/++4/qptVO9HRk0H9oZDmIAGjejFfe+2JfPkI9iwy9xcMoNY
	uwZEjqfgNsTld52YHpDzqf0dNgie2ipIHEiIonh+Ehx/tJE=
X-Google-Smtp-Source: AGHT+IFC1eyFtSU3T138B7sHX3WCUvpsrJSgm/v5sJarZM93HODcEWIrjdIQdvihqYpJqRC6isPly7UDkpbhgeXKghk=
X-Received: by 2002:ac8:5902:0:b0:41c:cc6d:bba with SMTP id
 2-20020ac85902000000b0041ccc6d0bbamr10907647qty.44.1698109753773; Mon, 23 Oct
 2023 18:09:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <ZTcXQXfnkEMYjnDk@host-62.home>
In-Reply-To: <ZTcXQXfnkEMYjnDk@host-62.home>
From: Jeremiah John <jeremiahjohn08706@gmail.com>
Date: Mon, 23 Oct 2023 20:09:02 -0500
Message-ID: <CAFLe_K3aDJJsun9A9k8x80tL9GMK6z9AivC1zTN3+eETUs9ziA@mail.gmail.com>
Subject: Re: drivers/staging/nvec/nvec.c "usleep_range" check
To: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I apologize as I did not read further into the Outreachyfirstpatch
guide on kernelnewbies, which states that changes regarding udelay are
best to be avoided

I will look elsewhere for changes to make

Thanks.

On Mon, Oct 23, 2023 at 8:00=E2=80=AFPM Jeremiah John
<jeremiahjohn08706@gmail.com> wrote:
>
> I ran checkpatch.pl on the nvec directory in drivers/staging and got the =
following two checks for nvec.c:
>
>         >drivers/staging/nvec/nvec.c
>         >---------------------------
>         >CHECK: usleep_range is preferred over udelay; see Documentation/=
timers/timers-howto.rst
>         >#630: FILE: drivers/staging/nvec/nvec.c:630:
>         >+                      udelay(33);
>
>         >CHECK: usleep_range is preferred over udelay; see Documentation/=
timers/timers-howto.rst
>         >#717: FILE: drivers/staging/nvec/nvec.c:717:
>         >+      udelay(100);
>
> I checked the documentation for drivers and it says that udelay() is used=
 only in the context of atomic functions.
> looking through the source code (nvec.c), I found that the lines where ud=
elay() was called were in functions:
>         1. static irqreturn_t nvec_interrupt(int irq, void *dev)
>
> is this an atomic function? can i test the changes if I do not have the n=
vec modules loaded in my current workstation?
>
> Thank you,
>
> Jeremiah John
