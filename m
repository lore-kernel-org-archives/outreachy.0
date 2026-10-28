Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.161.54
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1793192804;
	b=vNTucw490pBoFmAgwi0u5igDhuinfWb1Dr42TGRMAu5wY4edkk+2mYYt5CU9atgLwDY/
	 iTSTsl8hbGOFXDfi0ySO64ZQ5vvH3Ikssz86QR6st2psPcZoafblL+6rO7mo9T1nLSQt9
	 K/eG5A1S8qeYg2JVBxNE8mKzn/PDNr0ZfW/P/SEHPWF7pzLRH0XeWV8z3cCvMY51nhydw
	 jtcXrD8+FOIj9PhX9aSv9eDzfMRjjxkBYZ+qr06Vdldi8L9I+q+lDE/9UVIqQhYWxGkoh
	 16EnP/Uj2NOp4pZEoliUFcmunaHIvekjf3Z0GVBlJyfMsKp/TeV32YavkSRv72Mc3Sw==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793192804;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:MIME-Version:References:
	 In-Reply-To:From:Date:X-Gm-Features:Message-ID:Subject:To:Cc:
	 Content-Type:Content-Transfer-Encoding;
	bh=C9egq76GaG6HjCKGsUZbU1DezPe6xVL3sg8eEMDRTSE=;
	b=34+PMMTpgCw8PGJHM34zNlehPa/Yn0BUq21ryRoKN7M3aPrd7kmMwp00U9mk3OGMNGdo
	 oUVYc8vAp1L2NrNpEtIP82RGbp/bLT69WLqouoyjk1v4qMUlXlqjX1Lhdfc1FKJbt2uBV
	 5ghLrLE5nhR5RwPp53y/i4qIwpjNbgqyoRZOPc/gzIk8exc0FnuAGyw/RtqnDFIeyGA9g
	 2dfTdmsgJKOYfANNUi9sl2Km66zDPbbD6/e1KO8bePMCtYU426kDngkqsu/NdKQDAcrwr
	 UemdVqLF9E6cjXRC0A36FCND4RjR59Bb+NScH+UE8hUWskWjEuAf2Ja92fFzZ72JVvQ==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=e2fFdvDk;
	arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.161.54
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B52ED606A31A
	for <outreachy@lists.linux.dev>; Wed, 28 Oct 2026 13:06:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org B52ED606A31A
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=e2fFdvDk
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-6fbf1ba31fbso449612eaf.0
        for <outreachy@lists.linux.dev>; Wed, 28 Oct 2026 06:06:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1793192802; cv=none;
        d=google.com; s=arc-20260327;
        b=EfDzeMx28Jdf1B+bYBRRVzvL19h5XcGfOGp7SL1qCt+wchrwbtZFxGqYdIe2t+tC28
         heVCpIiQK6dzuq/THP4qeDd8bGrE8MqGeoYWw97mHsBaHoB7Fp1F5BD6eNVKJW4cBdpH
         0ShHAJUI0sS1Lz+e1EAjPTBbaV31sbSadTKCZwyHmuGL/53gNHVmqazRXM2eSYLFfKUi
         jPGYjec8EaNetjYS+/qlc89Qu6GQchCWk4ywcLAsiGaBNiS67mTxWO4I4SCa3OEgqG4Q
         JWj/fmwGP4qRGdNALezRadycE57S9KFm2mMtwITlEpYSdCRXRR8GyJxZd7xFK4p/NTuS
         51Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=C9egq76GaG6HjCKGsUZbU1DezPe6xVL3sg8eEMDRTSE=;
        fh=FJEQLyPyE0EKjz5GqR2TXBTo8rYqPWrXg46YkAKkemw=;
        b=lbVyT3I2JejjZ9l0aqmQDr3SOVlyaHA1Dh63cK1V5CvYvLYHUz5Aj+ik3SVMzyvGNb
         bK/U2Okusz+u9K3YhP/s2YGLt/7JOjKSqqGU+DG8Pr9yj+99sTWV/WXhXBST6+kXKWv9
         7Cv4va90eYQOIg3cUUsxgcJ2VVLSQL4tPEN1DhFvz6fA/PsPvbHrvapqK5QDg4i0fBcF
         76njenQ7ReoPKh442VSiK94MIsQK8omqNdc64maK8ExYjzO1jNdJSOGL8uu0fBKJL7p4
         JVtyUzvJszOybSv95l36bUCwwwkWKreXc3oIIcYUKxGpPP0kQxFcNJgWTZZb+wVrEHUU
         mHVw==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793192802; x=1793797602; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=C9egq76GaG6HjCKGsUZbU1DezPe6xVL3sg8eEMDRTSE=;
        b=e2fFdvDkIrGdguAEKYmYrWV9WxLTGc5guMW537HvTnw1E1vD6mWaQ0Dko89MTNLlcO
         K/Thr2sKGc1llw5OfC/17h9G3zc/hUvG7VzjYJ/smWBODhn4q/PlM6HYbuZGTmzmTbOL
         jdV+/jNw1++Ou/9rJnePc72tj5Y4D9uFWWivq+ZnafGxK8uH/d+hVlNx47j69t/j+VFg
         sLy1Yc7vBim1QFJtnnR/8AAV5yAyc7vDBgUz5IlNfyWzPz+MR8kiqHX/3IXmvQUAUhD5
         kdbwUoad354KaCPMeFmZe3UXznu3ciLp8E1xvTu+ZZ3vrvW4mfB7KptiAn/psjLAeqDx
         0tkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793192802; x=1793797602;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=C9egq76GaG6HjCKGsUZbU1DezPe6xVL3sg8eEMDRTSE=;
        b=N2B9uliS+709gNJWxwYGn+w+3UCEANqPuvyGbmcBeo3uOfb4NkJXxGVJ294JS9wHAw
         aIy6UhOdiPLWcB7PCR8/Sc7HyqRh/i6s4GznKGdac2lA9vF624ESOIwYfrsx/sqf1W23
         YErCwVc7kXUiU7iq57IyzXC/u7UiF7FZnTkPmTzINr1oTMuq9JqRAQtwARrxpFJqBFUL
         kPpTMKZWlYQaprymfsxYJIXwC7za2IozkUTUHnmlYORY8Tmt+RmGUP66ARLV3ngJPaBH
         pLkdRS5rEIWHIo9PI4qiScu9YrhQR+yk2oM/ZrQQO3tiShb6qLkocuRa2w0g/qcECbLE
         a5Mg==
X-Gm-Message-State: AFq9FYKR5+Mtsa8ggbJ//N3jbvDTI1ULzYRmFpizmOwvtiSq2mRaldTB
	HoS7fVImEgGZSskT1dnTXwwSRIIjCldtwxUjMxoItWvum6T2lTa6X55C5Opf518k/1OFQAjt3Qa
	whukjR/J4BV0LM8r1aAbcgzsiBhHcPvRKGz9R
X-Gm-Gg: AYBFou1YSd/bWtbZzP+iR/vtmrPM8Li6toLmPhaKOlk/G0VYnyso+PzrmzGQrEAWitz
	yaUgdSr5sNWu3gE2eAPIsQmtQoTkC9AlPQR+zlCsN+WEnOKttHZSDnsjFlFV7QUr9LRMgYuhKMC
	V07mm1XFE7BiyjaaVjeHZ16+ontJ4sdH4s6fhrNfluuTHNCIEVLXFujnDWsJJMfLa5xX3Z8pYTb
	WFTn8hUq7CVcLsH6pORpXZrjJry6ub4Uh3if/ajP4GBHEua3YcSTOPcgz02p4EhV4TfQKH98dFo
	4vUhIEkhu4ijoXv1dH9r8iSPNjmH1nO9u+R++5Mz9Ax/cIl7w6GuBO/k9qWesIHbAHxmlSY6Vfp
	to7S3EIAnBx+kKFbymA4tCE5CLHQ5Ye9rc+frvkk=
X-Received: by 2002:a05:6820:3390:20b0:6d8:5491:3753 with SMTP id
 006d021491bc7-713ef52f819mr819353eaf.45.1793192802606; Wed, 28 Oct 2026
 06:06:42 -0700 (PDT)
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
References: <20261028093941.16471-1-obabitemitope765@gmail.com> <97a1f371-86c7-46dc-721e-96923c8bbc81@inria.fr>
In-Reply-To: <97a1f371-86c7-46dc-721e-96923c8bbc81@inria.fr>
From: Temitope Obabi <obabitemitope765@gmail.com>
Date: Wed, 28 Oct 2026 16:06:31 +0300
X-Gm-Features: AclHuK8JLh4-0yD69UdCDY2fkQyIszAsYNjoL0be74Q8X4sOrDDoeFvMvg7SZpg
Message-ID: <CALUk5xbBfXGp9intSSr=5LvN67v2bPMyNLy2jqUoyyvZzmubnA@mail.gmail.com>
Subject: Re: [PATCH] gpu: host1x: Remove unused host1x_channel_submit_complete tracepoint
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev, rostedt@goodmis.org, julianbraha@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks, I'll check it out.

On Wed, Oct 28, 2026 at 2:26=E2=80=AFPM Julia Lawall <julia.lawall@inria.fr=
> wrote:
>
>
>
> On Wed, 28 Oct 2026, Temitope obabi wrote:
>
> > The call to trace_host1x_channel_submit_complete() was removed in
> > commit 625d4ffb438c ("gpu: host1x: Rewrite syncpoint interrupt
> > handling"), leaving the tracepoint definition unused. Remove it.
>
> There is some text in the instructions about removing tracepoints that
> explains why removing tracepoints is important.  That should appear here
> as well.
>
> julia
>
> >
> > Signed-off-by: Temitope obabi <obabitemitope765@gmail.com>
> > ---
> >  include/trace/events/host1x.h | 21 ---------------------
> >  1 file changed, 21 deletions(-)
> >
> > diff --git a/include/trace/events/host1x.h b/include/trace/events/host1=
x.h
> > index 1b6aeb7b177b..143a16e37703 100644
> > --- a/include/trace/events/host1x.h
> > +++ b/include/trace/events/host1x.h
> > @@ -178,27 +178,6 @@ TRACE_EVENT(host1x_channel_submitted,
> >               __get_str(name), __entry->syncpt_base, __entry->syncpt_ma=
x)
> >  );
> >
> > -TRACE_EVENT(host1x_channel_submit_complete,
> > -     TP_PROTO(const char *name, int count, u32 thresh),
> > -
> > -     TP_ARGS(name, count, thresh),
> > -
> > -     TP_STRUCT__entry(
> > -             __string(name, name)
> > -             __field(int, count)
> > -             __field(u32, thresh)
> > -     ),
> > -
> > -     TP_fast_assign(
> > -             __assign_str(name);
> > -             __entry->count =3D count;
> > -             __entry->thresh =3D thresh;
> > -     ),
> > -
> > -     TP_printk("name=3D%s, count=3D%d, thresh=3D%d",
> > -             __get_str(name), __entry->count, __entry->thresh)
> > -);
> > -
> >  TRACE_EVENT(host1x_wait_cdma,
> >       TP_PROTO(const char *name, u32 eventid),
> >
> > --
> > 2.53.0
> >
> >
> >
