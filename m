Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C99A74C33FF
	for <outreachy@lists.linux.dev>; Mon, 12 Oct 2026 17:57:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.42
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791827867; cv=pass; b=nMaSsFs/MEjr1bL8+9oCzf/mMpSYCeE5sk+HkCayl06immAnKbmSiie4aGbDhkY+A2eij0HFe2KFh9AGI/8KyZ1VyhtJ5JojJLFQcCf1JFpcCp94bc91xVo5ghi4p6mWcBUc3aBz8AGze4lREM//YyTTPhmjufFHSuyDI8x53XI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791827867; c=relaxed/simple;
	bh=tKHEGCY6r76koL/l5S9mzJ+wF3wLymIG9V6xeMYDS8Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Z6yVrCb9ftv5TPYmBr9WVuHxtrnrQGcUfbtsAUyX0t1vGZA2vvjp1+E64khGYal1syQncdZv9/bqmBnYnSddAbB3WSDtAfcJIf+dXS3491fuPPOkAnUbg1VlBMhTuK3FwEAASDiVP7+wJ9nCTDiZRvHRBPNcLOuu0R/poruZATY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BZmGoWPY; arc=pass smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BZmGoWPY"
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-c2e43f3d1fdso295869266b.3
        for <outreachy@lists.linux.dev>; Mon, 12 Oct 2026 10:57:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791827864; cv=none;
        d=google.com; s=arc-20260327;
        b=CedDdblr1XI/e8G54dPygzWsJpPavuXgHs3mKEbpOl0V19aQYWVyIXEqIF02m2Tc1Q
         bi0O5ONYGjm3o1o845bkmXFZI5gYR9tCLSOspKjN5jH92Zbg0SrionZFvsHi6e8NxVIg
         K1j5fpr41NDvdPL7RwHhqOHssdT4YlV7sfjQuLSltg3kAm9A8K+gZmC/uN9U9+hMPfI6
         y82PHESi4TWjlXL7GS46rOCGyC6TJ6ReCojAcZ5CnvNvrt4S2eq9gH1BMjx9wGzkk0c3
         jaR3NEJObj3iqcqn59iIxrNyNrDBO045MN3wyxkg5MHk9t6WisPhNVkv1mFwEDUv6/PS
         Vp6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=rvsjKUEKpCMLc9hcdJqN8gh1y0AqhQ0pFlm8r1MXE7M=;
        fh=iaAWL3T1yFhxKPZD8KjrXhQ7r6fiaAES12CXeqsDbdI=;
        b=jA+0ILEujTNL1EhYLbwkWdiXCy1mf6K8/cMdtZ+DMdfQMu+3lJNJTlbPf5AppF/LTW
         lLInbGd1++55F1gJF/YJtsd4FUMZWkiIp2bQ762L33hPOPgrU1fXro+TvL7j8XR03OD+
         vt0TlkzVD3VwXLO0eLURa916KHB8+BZg8I2NZ7oOr753kJ7wt0f0i4RzLfW2swJ1GbtA
         s5O9jk2/DHu08SI2dVTwdQH+s9/6AjYKChzxxou3Kb80QY6XVEt9Awky/OdydPTzUDlA
         2lEZyrKPSwiQaQJYKEcC8WSIJUMr3Ug0BKZ67iBqNJ89VhTscB2Kzq2ibYluH3ttAm+x
         eJLw==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791827864; x=1792432664; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=rvsjKUEKpCMLc9hcdJqN8gh1y0AqhQ0pFlm8r1MXE7M=;
        b=BZmGoWPY+wYOz8gQJzdMJzGyE8L6wcc42YAwP1t1Fx29eTglJMGoWowqqOY3lmuE/g
         KQE3oIk9ra+WT1qNRuAWl+ciS0pXAJuR0myiDiH3PQtpLka4GGMU1mRw7z/DfMfZIBr0
         OjQaWc3CGnXer1R0tNWGhlZqxhziNBPIzck2vKqDvCsoiZY9mNLNysf0KFH3/U7CNyEP
         1RZYlo2fY1DgsWSjX48e6k1/gsLiFSlbIMyjtCQmhabGrzUeWh6npQZyfr4WlvPf+rts
         cGFPxmXD5bTLnYOfwjohOSgCG5Lm4yJe6zhhOvDlEPSEHnecQeA79YFH+lE6qYGiKTtK
         ukOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791827864; x=1792432664;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=rvsjKUEKpCMLc9hcdJqN8gh1y0AqhQ0pFlm8r1MXE7M=;
        b=XIl33GwspZclpZy8twsZ85wQOVoScImsTuPRFwL6LA04L6RR0EPMNAndKAlwqwG788
         5NcCly3gLzELfQ+d2i/eX9ZzXmFQ/AO2eDBwUDiVk33uR0HNBOQFfg1j/Y1UqfYF6Aa3
         YykpO314rwPC9ZCQSgJTu3XUEk2fGvMdYXdni4qisoCx2pnpRiCZhKAyNaaC5VAj49dK
         ZrmFuB+5lzk2dEyBpT9WO7p9h9GJzPNJ+4meUSUstk6xsU6W/2qarXkRgoasIq1swT4P
         eRZtNdltTmlxkeUHKYbHArpqsp2dgjvC23X+jaB27dOfUKAXeYFQUpeR/QVpZ2dNJi2j
         LBNA==
X-Forwarded-Encrypted: i=1; AKwUvBz2W20v5fDQD9L2yOtwOYFDx1ARutOUq5W+lm1RZ75ddtLTp1z/5w6XopD1JktJdKOkXKmofEyWZxE=@lists.linux.dev
X-Gm-Message-State: AFq9FYJy0csFDo+oZfCUkYUqYIjDvnyv6Z5dU+lN7T+wG6MWCXUerRm8
	Tkvl/vVLvP57p7ts1ECMN3zluNYP5M9byV49MfHUyhPS/1JdaUnYpxpBDEiAvsPgUUfGff6fu/p
	A7oG7vqjxENSCpHppkh7PI+ABQBB4BQU=
X-Gm-Gg: AYBFou0NF3dXAyaBS1YJQp0N/gCvOWLl6xzKpp8+s7EG+lyWnuDt7j4qMySSDGZzwt+
	FC6Otm6u3u48EXbCaIbYKouhy2CPazui09xXoK7l7fcg+9k4V8pEsIfdrjXIDPeu65YnzY7VhpB
	K3Syhz7t6kmccxdv2f6s4SayVYn0asL6UF1re7X37z0WxmjbF2XLYEUAekLPgMULn2l7ZCP9bz/
	0lYUytLSMcExAYq2fxyWqW0fps8FrP66eyRJXB6G2yxlVfN7p3PTTMTAzZ8rLw8/UMuq6+QLl1A
	gGP3cBDZoAJmUJ+nIvCLr2Hkhz24OwkOziJx4Esk/I/8cOXcEUMNarj4apuzh09nPTnmyRfsunr
	bGHf7YS/flUAs
X-Received: by 2002:a17:907:eccc:b0:c29:7953:6c06 with SMTP id
 a640c23a62f3a-c31aa0f72bamr946074266b.49.1791827863579; Mon, 12 Oct 2026
 10:57:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <20261012170014.68898-1-pavankumaryalagada@gmail.com>
In-Reply-To: <20261012170014.68898-1-pavankumaryalagada@gmail.com>
From: Jeremy Clifton <gservice341@gmail.com>
Date: Mon, 12 Oct 2026 11:57:26 -0600
X-Gm-Features: AclHuK9ZnaJO_VOcPMtAKRiGApXxopBu_93ZaUEgo7I2pXSxZlLgJ0Tt_dcxXaQ
Message-ID: <CAC2RYzLMQSOi961mmyNkK1aVuMDafXdvRj_mCEAZQnU37sKA8w@mail.gmail.com>
Subject: Re: [PATCH] staging: greybus: replace PTR_ERR() with %pe in error messages
To: pavankumaryalagada@gmail.com
Cc: johan@kernel.org, gregkh@linuxfoundation.org, vireshk@kernel.org, 
	elder@kernel.org, greybus-dev@lists.linaro.org, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org, outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

For this patch I have only one immediate suggestion.

The firmware management case (case GREYBUS_PROTOCOL_FW_MANAGEMENT:)
should match the other cases. Found around line 96.

You've changed the pointer variable to display and this seems correct.

For consistency, each should match.

On Mon, Oct 12, 2026 at 11:00=E2=80=AFAM <pavankumaryalagada@gmail.com> wro=
te:
>
> From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
>
> Use %pe to print error pointers directly and display their
> error names.
>
> Keep the other PTR_ERR() call because its return value is
> needed for ret.
>
> Signed-off-by: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
> ---
>  drivers/staging/greybus/fw-core.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/greybus/fw-core.c b/drivers/staging/greybus/=
fw-core.c
> index 2016a74f137f..7053afa9ab3e 100644
> --- a/drivers/staging/greybus/fw-core.c
> +++ b/drivers/staging/greybus/fw-core.c
> @@ -112,8 +112,8 @@ static int gb_fw_core_probe(struct gb_bundle *bundle,
>                         connection =3D gb_connection_create(bundle, cport=
_id,
>                                                           gb_fw_download_=
request_handler);
>                         if (IS_ERR(connection)) {
> -                               dev_err(&bundle->dev, "failed to create d=
ownload connection (%ld)\n",
> -                                       PTR_ERR(connection));
> +                               dev_err(&bundle->dev, "failed to create d=
ownload connection (%pe)\n",
> +                                       connection);
>                         } else {
>                                 fw_core->download_connection =3D connecti=
on;
>                         }
> @@ -131,8 +131,8 @@ static int gb_fw_core_probe(struct gb_bundle *bundle,
>                         connection =3D gb_connection_create(bundle, cport=
_id,
>                                                           NULL);
>                         if (IS_ERR(connection)) {
> -                               dev_err(&bundle->dev, "failed to create S=
PI connection (%ld)\n",
> -                                       PTR_ERR(connection));
> +                               dev_err(&bundle->dev, "failed to create S=
PI connection (%pe)\n",
> +                                       connection);
>                         } else {
>                                 fw_core->spi_connection =3D connection;
>                         }
> @@ -149,8 +149,8 @@ static int gb_fw_core_probe(struct gb_bundle *bundle,
>                         connection =3D gb_connection_create(bundle, cport=
_id,
>                                                           NULL);
>                         if (IS_ERR(connection)) {
> -                               dev_err(&bundle->dev, "failed to create A=
uthentication connection (%ld)\n",
> -                                       PTR_ERR(connection));
> +                               dev_err(&bundle->dev, "failed to create A=
uthentication connection (%pe)\n",
> +                                       connection);
>                         } else {
>                                 fw_core->cap_connection =3D connection;
>                         }
> --
> 2.43.0
>
>
