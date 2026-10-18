Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E1CC41D112
	for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 21:50:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.172
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792360247; cv=pass; b=WDG4T2SyfvpMaPbd0vaPAseOml1g8CdyL8I5hz+MybhBAd8GE6gHxR1zAwnH4aMfOsfxxif3rsPJaRA8D4eUzq6ojc3L/K5/Oc/qxYA0mP0OZY2mBYdtA4J7TSfk1E+1tmDNGGECLLdkmP09/aoTfLcKwxPwFdsycjSH/u0KPpE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792360247; c=relaxed/simple;
	bh=JsApNxqREUvCCfWYG4AGYT7TQ/2LL6l0vjt9rZikPwk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aWeWpjpUSOKqbbLNtTIoIfp13xJ7OTIr/oMULI/zJVC+tx/iwQZNvDbbQDlvKss7k9EVSvcR09+JyW+x7SjTAPPP2CWU9W2pCHUNR0XvaY7VHJRsUPoZGqPi6VAPW3CCK8q5lzitNHIRYz86TXgfKsOZ4UT7QwJ0H8gorEy6GiM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jYVSXpAa; arc=pass smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jYVSXpAa"
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-8ab43af5e97so14374307b3.1
        for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 14:50:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792360245; cv=none;
        d=google.com; s=arc-20260327;
        b=kfo3tMWu4/7IZz1bxRmYiQZO0uc6c2fpSV1BEOMUGZ7QEmoK/nRuWSVhRT0z0CNbft
         eD1aM15lE3TmbPB33mVQ0hA0tazGzsQZhvl3x318CZcDsC84kswQTdhmnpnYmyAPZBAH
         J0uHN36Gd4I6o6SaFU3gltvdS6NZbryaBGPCHh5L0FASbLL+Iu/RLVsR1hunjCjZ42Bo
         T2fFx6tG8Urj23ihYqipyZ89mKGHnTkS7x9o6S7GTOYOto+8hiWkJldNE+bGfwnO5RJa
         7ojOSUq5zq6frjMA4iIA+1zlOn6TPf5JAqiObeshAGFKcOb7C9tY/CjjQwj8TO+9iVDr
         kbxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=yi4OcEVBleuTF2zelBND0PJXNDFdIaerPT1ALBRVIDA=;
        fh=8S+2HWsakQ/n7Rom4SpaGpgrZ4ldWg/8OfDOR2ZBTEg=;
        b=RNXAep6DeRAfrRHiP5Cer6Kt2CgI36oAkFXX4x9+0dRpRi5mReDXDZ2f8wRBkNmuvE
         rOMo5d86van93VDV+sohyNjTkR2xukulZi+W9Bz5nYrzby9qPKnD7A52LsjBD2imp60e
         CLf5SBslqaHr630ygHDKS5Nrg5Az8T1IGWAcu5VG4WSJnpbtE8vE9PPjMybQpUqk1Y7a
         wuPH0MSLTxj9qfCEy4cp2Q04HXt0B2HQr3uwS+Aaj3ZZGXLaGdfO08/OU4Hnw6Uc3+M6
         nHwY/5EeyUXmpd9g0NvPguIbzN2z1De8TXLLnEgWqbV3Xvei9pM+BMLcrYERO5ysF8ez
         AxzA==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792360245; x=1792965045; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=yi4OcEVBleuTF2zelBND0PJXNDFdIaerPT1ALBRVIDA=;
        b=jYVSXpAaAm9cz11g+l6sALl8O9Pr2PAaRxToA9bILXLxzUcB5MEfXDVtYVVerc60H4
         3elHof+28BSxLCDUHgVequ0+XI8HM9If2IBxzGoYzGrk79qQq4KxYWTaBnUfIW7mQBrU
         KcLriJajTMzSyAI+FUo5qnOaTy6qrwRdR4cWY0pAekObmyOY+91qlEWXr97dZb6ONt5m
         UutTg0PEyNyqKpFCkQSQPC6WA9iiiFAppusSVHU6cINRr4+D0B1mB6P/PAjOUwIXd3K5
         7cs4WTgBjRTGSF6f/FIpeokAV8xhb5pscAyLouxDg8w6sr49HA1dEyVzz1yrrbwMldwd
         MJiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792360245; x=1792965045;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=yi4OcEVBleuTF2zelBND0PJXNDFdIaerPT1ALBRVIDA=;
        b=n7hgHKEwYV5k6VPisvUEP1gGYjAeer/PWQcPzZeBgDb+KXd6ODahLSNRuBnYDyHSXd
         d4OwH5aeImn6a8TK+v/sIgvHdcu24xfcyR26eCbG/UmlQDd3jJQnneBqTntnKfEVsc3u
         Z98uemXs0fNQ8KXYIncliPo/YkCNp+nPYYu/aiZu3z7RUuyu48H0IToQ7QM2Decths98
         M8ALZJ/sm7gL8zLZFza8P8t1M+AaAvWbahgT6XcQ/yx/FvfSNaSe2o7jb7bumKB2gNJJ
         JChWW6Lp2IP23lM3pSRlYZ6Yu2R/Bk8lZcV0usMR9FhQykixcWxUrLSQoAAmf9Os6f3j
         jkkg==
X-Forwarded-Encrypted: i=1; AKwUvByLM09D8LcTG2EesTvnMQq7xvK5otLfygnI+f5PoPEHMs74I103NgpKb2Oolcblnb72xJ0wxmo3chI=@lists.linux.dev
X-Gm-Message-State: AFq9FYKDS2OB9zYqMt5Mr/eWOdLv+t3/TdVBoM0JPfioECwqyE0JeJG0
	GzlxckY6XOfi92971tzHH32HjzsnalJNzpZHj6uGOp5KqLN2NsscOPuUO5oM0xPB8JXzThv/oPm
	BoACdZMgtII3ieFNeIUL0Yw2X7U6C7tQ=
X-Gm-Gg: AYBFou3HZ6/mjYlLV5yNJikwc5YaOu8rC2qVntyYwIvgDyKAtJa/6V2JMHm0VIr2sEY
	W0yNlGxjYTj2G15eRFGlEtSS2yzrXdivftyNFL3inisLqtVRb67qtvjN4Flb5m86JmoPVZLr1iM
	MNuZ9DAIOCn7daZFmz9bpIPMzH/Px2tAIZk/OtuZdLKg7j2D++dMbPlqkNML2Q1iepFRvp1K4dl
	M7RUIi3sYLOrj3RA2SdVwdiVpOnFStlGWtSsI3TfaICMzxeknbuTLuiMdycQO51mkwYLEz9YLrc
	5DEuzTC1XXxysTon5fcCyB4T0oKY/GPJpXUcgIqXhkoZbupc91gzlu2Fyuc2KapIhI0KBRf4PF4
	D552fUBGylVX3fBKHlvKG+WYwcvYYNHKISrfTzfXnrDB4S8UGdUNvICvE0r0Uv3Pt+bS/MtnZMD
	dh/BMwSQGM718L7WrLcuOUJvu/kNcxK/Rnq9uvgg==
X-Received: by 2002:a05:690c:60c6:b0:8b0:56e6:54ff with SMTP id
 00721157ae682-8b0f20f2b8fmr20435397b3.6.1792360245450; Sun, 18 Oct 2026
 14:50:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <20261015222735.89251-1-okhuomonajayi54@gmail.com>
 <fcdee571-d94c-a5ae-5ae5-b41977f22073@inria.fr> <2026101653-repeal-deploy-2aa5@gregkh>
In-Reply-To: <2026101653-repeal-deploy-2aa5@gregkh>
From: Okhuomon Ajayi <okhuomonajayi54@gmail.com>
Date: Sun, 18 Oct 2026 22:50:34 +0100
X-Gm-Features: AclHuK-ckhS_4r7IKrzFrVbhZJ4prq24_eCMG7slNkkX4fQeUlsVEZ3ToJ1oygE
Message-ID: <CAFpMFfB4ssJ=YnLeDu16NUXJ2mTWK81+krJ40qzQueHOM4=GhA@mail.gmail.com>
Subject: Re: [PATCH] staging: greybus: add blank lines after struct
 definitions in gbphy.h
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Julia Lawall <julia.lawall@inria.fr>, outreachy@lists.linux.dev, 
	Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>, greybus-dev@lists.linaro.org, 
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 16, 2026 at 5:54=E2=80=AFAM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Thu, Oct 15, 2026 at 10:17:35PM -0400, Julia Lawall wrote:
> >
> >
> > On Thu, 15 Oct 2026, Okhuomon Ajayi wrote:
> >
> > > Add blank lines between the structure definitions and the
> > > to_gbphy_dev() and to_gbphy_driver() macros to improve
> > > readability. This fixes the following checkpatch warning:
> >
> > Thanks for the patch.  But I suspect that the lack of a newline was
> > intentional, to show that the #define is closely associated with the
> > previous structure declaration.
>
> That is correct.
>
> thanks,


Thank you i would drop the patch now
