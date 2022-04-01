Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5BB1367
	for <outreachy@lists.linux.dev>; Fri,  1 Apr 2022 13:07:28 +0000 (UTC)
Received: by mail-ed1-f50.google.com with SMTP id g22so2922026edz.2
        for <outreachy@lists.linux.dev>; Fri, 01 Apr 2022 06:07:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=29glPxto5UxruKc1y9J6FhPe0aqUiolkl0wBM6KJ1zI=;
        b=gOiNlSljeysw4MhafQTjjjtkrLC/wdKU+i5KyM2CTKSxNNGMtCzJcX8zm+6gld0lnj
         7UjPP6Bf5+HFPmXGBMxMLXsfgqb8RsCBMx1Vy69/8j6P3rnxWLegeL/Pue8GM7rAl6j0
         TfiMW9JDyR1uZKWCiW6xMVB3cwE7OAR+HRLlFgp1MHk4LLWELtkRZGQ4iyRA6BNKqpMr
         tscmcrAMLhzIT/+5z+bYZ8R1YuwCAXfCZpwe+Y1mtvO1T68iXLduiV9xTctRpOFNYV4A
         VZf+0iqycBu1bNTwdogg4d2w9o734CmSLFmQYgcXgTSodkvc1Ly6gwxvFDhowcS61Z7I
         XMQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=29glPxto5UxruKc1y9J6FhPe0aqUiolkl0wBM6KJ1zI=;
        b=eKEQajfu2xfQO+F4xe93V9zGiYjcvaG7/3NfcJ4Lq99NeB0TtAAhCpjgkgcowc4mhh
         opKQ4IIpyQW8ss/u4ZkUwXjrSaxVV3Thc2BBYZlcXKWUKoREV2M0/qJshum/x/+ZYi6R
         UniXuUxs9YKZOpPODAE2NbuwaL2Jj2X9/dkocU7Mi9t51BtbLmpxoOSOvwZzETxDPLoZ
         bFRXzuYDlzNKq5Ku/oeWg/WeGSNWk/muYM1dK69lCB8BFpIpbyLiNrGaEkDZ3SNjQNpZ
         RwwUAcdvh/teuG5JjQRdkbWwKf0hk1AYvAIjn2k7UnfXiF8mCzrJ0O2o55ke+EwnTUL2
         O6HQ==
X-Gm-Message-State: AOAM5308fNU+edoy96ajsEiDU78Fk5cbQ9xSEH9+0KDr3m+yVS0tfKcB
	F8gHJLd/tuPHafG2hI6UuiA=
X-Google-Smtp-Source: ABdhPJyRPejX97OshSLBmE7c6gVoeIqUg5b8yHjRZJ/Ppji4O5afWsKMP5WI4FaXl9o0WMIS/crQuA==
X-Received: by 2002:a05:6402:268f:b0:419:56cd:79e2 with SMTP id w15-20020a056402268f00b0041956cd79e2mr20947189edd.18.1648818446293;
        Fri, 01 Apr 2022 06:07:26 -0700 (PDT)
Received: from leap.localnet (host-95-249-145-232.retail.telecomitalia.it. [95.249.145.232])
        by smtp.gmail.com with ESMTPSA id do8-20020a170906c10800b006dfe680dbfcsm1036538ejc.43.2022.04.01.06.07.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Apr 2022 06:07:25 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Compilation errors
Date: Fri, 01 Apr 2022 15:07:24 +0200
Message-ID: <1943335.PIDvDuAF1L@leap>
In-Reply-To: <20220401145714.5a0d826f@elisabeth>
References: <3603561.MHq7AAxBmi@leap> <3410190.V25eIC5XRa@leap> <20220401145714.5a0d826f@elisabeth>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

On venerd=C3=AC 1 aprile 2022 14:57:14 CEST Stefano Brivio wrote:
>=20
> Okay, then that's really an error.
>=20
> It might simply be that the you're building some drivers on your
> staging tree that you're not building on the mainline tree.

Yes, this is why I've decided to use the .config that I have in Torvald's=20
tree. They should only differ for the drivers/staging part and the suffix=20
for vmlinuz.

Now it builds correctly with gcc11 :)

I must look carefully at the diff between the two files and figure out
what doesn't work.

However what really counts is that now I can go back to work with "staging".

Thanks for your time,

=46abio=20



