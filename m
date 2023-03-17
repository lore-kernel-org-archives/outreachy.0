Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D1F8810
	for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 09:00:03 +0000 (UTC)
Received: by mail-pj1-f51.google.com with SMTP id 6-20020a17090a190600b00237c5b6ecd7so8406563pjg.4
        for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 02:00:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679043603;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VTjSID+rVIazsGcNeovNdjdKEKGqYhnE2+hPF/m09pU=;
        b=GicFCcDONRTVdwE8E17HgMptvcYjtK5jobFFYFV4VzDUECX+h0tMlkqqaurOk6uBsV
         O+TGAw+gt272up5kbtbt/Z9xFnk494cl/QKXfPztdMsVrmombE2ItBvEIHeYFl+jdTn9
         3XROXVB2VgOSkqlX3nPfhqZIIbnbpweDBaV2MHFgQ+A5CL+VYuzP9nZ3SRHAj/OiJYPp
         fbeaazHa8GvKZYF1Q93QgO3Lp+hW48Zb2f9XCU6sMjLw3xONa0QnFNSat40GT1q3SpTn
         w0XnXN6aRlEvt+RX+3vQDd8jM0dtHiHELqneiw+/1qp6OD2UlUEnI4xmd6kquNeFY0Ax
         AogQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679043603;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VTjSID+rVIazsGcNeovNdjdKEKGqYhnE2+hPF/m09pU=;
        b=IMmn/S3yv3vuQiecm0fcDsh0/Tt9N7BYQ0+v1MVCYvoYXgg1qbXpYqyO8USXHPo6lL
         JQWSvFxvKNpgRZUZ7mkJdY0wn4b5XPBBpw/FqniEKD2Af3uqoqoJ4jzLM9X0x+h8XwES
         p61JxrgpI3BZdQEGy50xzR56RWkuv8Qr3hGWZRR0KM8bccQwJybwbd2PssE8aF0XeH4Y
         1JarYzkMWM659sQj4hlM0hCeuEQlF6D47fuHwuhhFaE3c7cC8uqCABtJDemlvV3KtYaZ
         q0A43gH/uaU76TUNtbf9nLu3zRNwPEDeI+s6ey45aE7bLuoW6NGLsyy+9nAlbyUqp8FV
         5mUA==
X-Gm-Message-State: AO0yUKUjsUSFVhFd2ELtnzOy1W5WAwxg5w6PAM8p+aHcdUjJiB3UHkbK
	F6OUsk7sK+vqMxJ+LihMgs8=
X-Google-Smtp-Source: AK7set+1AMwqt2uWIekkGaKNmOsVg4l3cQhlz5RYlKFhXa2NssG6BWi0MUT0i6sn+ii5HRLoFo5eQw==
X-Received: by 2002:a05:6a20:7b11:b0:d7:e073:eecf with SMTP id s17-20020a056a207b1100b000d7e073eecfmr631978pzh.50.1679043602777;
        Fri, 17 Mar 2023 02:00:02 -0700 (PDT)
Received: from debian.me (subs02-180-214-232-2.three.co.id. [180.214.232.2])
        by smtp.gmail.com with ESMTPSA id l19-20020a63f313000000b0050bd71ed66fsm940771pgh.92.2023.03.17.02.00.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Mar 2023 02:00:02 -0700 (PDT)
Received: by debian.me (Postfix, from userid 1000)
	id 661E1106581; Fri, 17 Mar 2023 15:59:59 +0700 (WIB)
Date: Fri, 17 Mar 2023 15:59:59 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Sumitra Sharma <sumitraartsy@gmail.com>, outreachy@lists.linux.dev
Subject: Re: [KERNEL NEWBIES ACCESS] Sumitra Sharma
Message-ID: <ZBQsDwvI67iq/Diz@debian.me>
References: <20230312170757.GE28100@ubuntu>
 <ZA7oTq4LwuatjaI4@debian.me>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mzeY5VXjW7goMI/J"
Content-Disposition: inline
In-Reply-To: <ZA7oTq4LwuatjaI4@debian.me>


--mzeY5VXjW7goMI/J
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 13, 2023 at 04:09:34PM +0700, Bagas Sanjaya wrote:
> For MTA, replace the now abandoned esmtp with Postfix. Configure the MTA =
as
> null client (see [1]). For system-generated emails sent to root and postm=
aster,
> you will also need to canonicalize these recipient addresses to your email
> address (see [2]).
>=20

Hi,

Another thing that I forget to mention is to also configure git to send
patches with Postfix. You need to set:

```
$ git config sendemail.sendmailcmd "/usr/sbin/sendmail"
$ git config sendemail.envelopeSender "auto"
```

See git-send-email(1) for explanation of these knobs.

Thanks.

--=20
An old man doll... just what I always wanted! - Clara

--mzeY5VXjW7goMI/J
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZBQsDwAKCRD2uYlJVVFO
owvYAQDEfhXWp99SKB9qb9CB84vbpIKkxG9jZsfX/K8c28PB7AD+PpnZgDZdS+ZZ
x0fvz1LVnfbqE5q7PghrAIxRIVjS0wk=
=Js9U
-----END PGP SIGNATURE-----

--mzeY5VXjW7goMI/J--
