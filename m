Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04B6B3C00
	for <outreachy@lists.linux.dev>; Thu, 16 Mar 2023 15:41:41 +0000 (UTC)
Received: by mail-wr1-f50.google.com with SMTP id j2so1935530wrh.9
        for <outreachy@lists.linux.dev>; Thu, 16 Mar 2023 08:41:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678981300;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0DDFEp9zM3SQgDM5pd1uzpTNzxke3xF6iqE1pDWTvCs=;
        b=iL1aPgX7Ee/WK1LCwG2SXRX+c5msrjQ9SRzgxb3yaKwA5vHo41xjK6zoINAnPxbCbq
         KO+RJiy0lTLeXUE9kyLV8vD7gG0ApjtXEtgSvNdBjPiolEg1W648OkGCJBBZbSwa48zX
         fCSBslGhl7FrpBShw3hfDDKoyVGSH19OIHkG79q8+/mmxREimqzdgRZsfWc384D918XZ
         8SdMir5sEGIOOD+vZn/dZBQ4YYi5zEAS5JgBkZJsWMjJTSExDgzY0mfzSNRvfipTtJX7
         trLU6eeFy2yNtGSLgNsLnh4MVn9k2WUdJqwiZI+PB+LEgbOy7o1eZLZRSim3W+1rtM8D
         5DNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678981300;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0DDFEp9zM3SQgDM5pd1uzpTNzxke3xF6iqE1pDWTvCs=;
        b=qFdsA8JqQ9+y+EzPLecOu5cmQqQ0ShfIvoR92Jf9JCrfBJa22H/aBX37d/5P8TAwsZ
         vWYxtcDjdUkheSh304Urg3pGe02YClRZhjljg2xGWVNaDYdEv91SUd1Gy4WYqcuezj8t
         mwQIDAWI70wWN/47+ptRicm14k8SVpAYKh3C5oX6kkv+M4DxmzpsTYff2yBd4776z8O0
         rav3Rfh3Pc6XvzJa+/0BYp3A7IpBuJyaPqMMS1/0KeCynKtGgdu88hZIOWUObQqz1YaA
         LDY9eAAaSraqj/3DpPYlEd04oSgkR7acQSUP3szquNb1fqJeJRDNuXxNPAZvT02ySKme
         tZ/g==
X-Gm-Message-State: AO0yUKUhBFgF8fydcxyPVtDxVzA+3M7gaNG8SlpRaREkUTPHGWOmjoSq
	o5jWoHWXCsSK1yRPhpsk2+w=
X-Google-Smtp-Source: AK7set/Tt5nCil5m5v7yVH1nVDf53K2jvfQIBN1SD25mWRuSxC8KunV0/3XgdMEEa4wRDxMScpePLA==
X-Received: by 2002:a5d:4046:0:b0:2ce:ac70:5113 with SMTP id w6-20020a5d4046000000b002ceac705113mr4776040wrp.41.1678981300066;
        Thu, 16 Mar 2023 08:41:40 -0700 (PDT)
Received: from suse.localnet (host-79-35-102-94.retail.telecomitalia.it. [79.35.102.94])
        by smtp.gmail.com with ESMTPSA id a16-20020a056000101000b002c54e26bca5sm7592964wrx.49.2023.03.16.08.41.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Mar 2023 08:41:39 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Sumitra Sharma <sumitraartsy@gmail.com>, outreachy@lists.linux.dev
Cc: alison.schofield@intel.com, julia.lawall@inria.fr
Subject: Re: [Outreachy Info] Ask for help finding cleanups
Date: Thu, 16 Mar 2023 16:41:38 +0100
Message-ID: <3217711.oiGErgHkdL@suse>
In-Reply-To: <20230316131656.GB47401@sumitra.com>
References: <20230316131656.GB47401@sumitra.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On gioved=EC 16 marzo 2023 14:16:56 CET Sumitra Sharma wrote:
> On Tue, Mar 14, 2023 at 04:49:20PM -0700, Alison Schofield wrote:
> > Hi Applicants,
> >=20
> > We want to support you finding cleanups. Today I spent some time
> > looking through staging and am working up a small todo list that
> > may be useful.
> >=20
> > I posted one such cleanup to Menna because I saw them submit a
> > couple of attempts at a first patches.
> >=20
> > I think that Kloudifold, Khadija, and Sumitra are busy iterating on
> > their first patches. Keep going! Ask for help finding your second
> > patch if needed.
>=20
> Hi Alison,
>=20
> My first patch is accepted. I will appreciate if you could help me to fin=
d a
> second patch.

I don't want to answer for Alison, however I would like to point out that i=
n=20
this same thread there are several suggestions, both from Alison and Julia,=
 on=20
how to find tasks in "driver/staging".

Scroll through the thread again and see if it helps you find more tasks.=20
Alison's first post explains an effective way to find something in drivers/
staging

Thank you,

=46abio

PS: I think applicants shouldn't overlook Julia's post about certain macros=
=20
evaluating in container_of(). As Julia suggested, you can work on convertin=
g=20
these macros into function definitions.=20

=46urthermore, this kind of work would help to understand the working and=20
implementation details of container_of(), itself a macro used a lot in the=
=20
drivers and core subsystems of the entire Kernel.

Isn't anyone interested in this kind of tasks? Please have a look at https:=
//
lore.kernel.org/outreachy/124d2ef9-6f1d-2652-c88d-161f1bc06443@inria.fr/

> Regards,
>=20
> Sumitra
>=20
> > Anyone else who wants help in finding their first patch, please reach
> > out. I imagine their are some folks exploring here, that I haven't
> > met on the list yet.
> >=20
> > Finally, it seems we won't be holding to the traditional 10 cleanup
> > patch requirement this round! Please continue your efforts and I'll
> > redirect you towards projects after a 'few' cleanup patches are
> > accepted into staging.
> > Thanks,
> > Alison




