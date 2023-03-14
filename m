Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9621FD9
	for <outreachy@lists.linux.dev>; Tue, 14 Mar 2023 04:40:09 +0000 (UTC)
Received: by mail-pj1-f43.google.com with SMTP id e15-20020a17090ac20f00b0023d1b009f52so3820335pjt.2
        for <outreachy@lists.linux.dev>; Mon, 13 Mar 2023 21:40:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678768809;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TDr6065VBcoyunemgesYIRaNeVt2k2NlbwTlbkU0PRk=;
        b=ab/B1DlEviI3lrNwnMkTs/tLThchmZ6QMOBDizOfTVZv7fMtzew0iFGpY6HGUH6Ujk
         v1/altAYZpCvT5Btx2jBARC3yelrlSMWHSSndYfjJvOLW9J/sz0eaSfv03pSEl1Jc9Ml
         zjfJUcZRhDSxbI3l1ITfLspeag57/xX5dHaRkoBTrEvYYD/dyh4ndsq6TXSQsz+8vo3K
         r/v3Q8mH3a62tTJRkC2Z1wNtLodAyI3v8mTg8UYhj1MM+CzfcBLagE1riQY6vfGs3Cko
         Gs/rvpfvU2DFOmpJvs6fKYRULtFLH4ZTJeqXyBdP7zVzqEA0Sb7De/aAF4Gqz/6niL4q
         ccSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678768809;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TDr6065VBcoyunemgesYIRaNeVt2k2NlbwTlbkU0PRk=;
        b=Wa82bWwCe28k44XgWMzI2hLtegAg2pzmOsSIYY61QDtg/6xkcL3dQFnHHQ2VxQdUgv
         VYtladkIHpDJer04jGRz6RF68DQv4NzlbSN8eDsAYnQIOYtCJiax4CXtqutJiqZxhvD/
         maVWqgh1gy46Nar3rezA6K1ZLFa7Xz8Zj7LQlicEEo2/ZlARuqXj730nTNOkUgaHemcO
         RFhoxgSTkZ6r8kq+gU309eHuFhyS4EF+nI4mIbj+Z1iR/hrg60kewROnTntetp1FDXTF
         WCSyG+OM37pdDshNSJDwsrl7R94DyNrkDH+H6PBbaH4PDy5Y/4OkSJzECIeHzPeQ4YoH
         16TA==
X-Gm-Message-State: AO0yUKVNCJj+EgYAGHh4CgspM+cHgNljQMap1tZiR/eNV/WeMVcTnOqR
	IVIM8ClUAUu3Ns+ws6fhmPM=
X-Google-Smtp-Source: AK7set8daNHuTh0pS/LKU7K8L8Xfwc6Gj0Vdhsc2auQ7QfSU964zKl8OjCglOgZLuZPXaI662L4HgA==
X-Received: by 2002:a17:902:720b:b0:19c:171a:d346 with SMTP id ba11-20020a170902720b00b0019c171ad346mr30984458plb.44.1678768809225;
        Mon, 13 Mar 2023 21:40:09 -0700 (PDT)
Received: from debian.me (subs02-180-214-232-88.three.co.id. [180.214.232.88])
        by smtp.gmail.com with ESMTPSA id c17-20020a170903235100b00198fb25d09bsm627608plh.237.2023.03.13.21.40.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Mar 2023 21:40:08 -0700 (PDT)
Received: by debian.me (Postfix, from userid 1000)
	id 4B1D11066DA; Tue, 14 Mar 2023 11:40:04 +0700 (WIB)
Date: Tue, 14 Mar 2023 11:40:04 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Kloudifold <cloudifold.3125@gmail.com>, alison.schofield@intel.com
Cc: outreachy@lists.linux.dev
Subject: Re: Help in patch message
Message-ID: <ZA/6pIGQuENzyxo2@debian.me>
References: <ZA/Tql5l6dfNaMZ7@CloudiRingWorld>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="V46utTShU3kj7MWO"
Content-Disposition: inline
In-Reply-To: <ZA/Tql5l6dfNaMZ7@CloudiRingWorld>


--V46utTShU3kj7MWO
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 14, 2023 at 09:53:46AM +0800, Kloudifold wrote:
> Recently, I submitted a patch that has been rejected, and I am not
> sure whether to go ahead and fix it or create a new one.
> I would greatly appreciate your guidance on how to proceed

I think you refer to [1].

First and foremost, read Documentation/process/submittingpatches.rst.
Specifically, you need to address review changes requested by reviewers
who reply to your patch.

Then, send v3 with all requests addressed. Don't forget to build test
your patch. Don't forget to git pull latest staging tree and rebase
your patch on top of it.

Thanks.

[1]: https://lore.kernel.org/all/ZA+K6OdPe21k8F2k@CloudiRingWorld/=20

--=20
An old man doll... just what I always wanted! - Clara

--V46utTShU3kj7MWO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZA/6oAAKCRD2uYlJVVFO
oyC5AP42qby6JKmRG9F9Ifzy4RwWNleJ51Vw6j+Cf0jz0gKj1AD/Xy5lLyMRFAKP
WZpxwjNtqp5ToK4TRFlPdObD5dk1wg0=
=RhIv
-----END PGP SIGNATURE-----

--V46utTShU3kj7MWO--
