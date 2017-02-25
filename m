X-GM-THRID: 6390634706454446080
X-Received: by 10.46.84.13 with SMTP id i13mr793451ljb.2.1488023139693;
        Sat, 25 Feb 2017 03:45:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.178.206 with SMTP id b197ls597222wmf.11.canary-gmail; Sat,
 25 Feb 2017 03:45:39 -0800 (PST)
X-Received: by 10.28.153.66 with SMTP id b63mr210358wme.23.1488023139032;
        Sat, 25 Feb 2017 03:45:39 -0800 (PST)
Return-Path: <samuel.thibault@ens-lyon.org>
Received: from hera.aquilenet.fr (hera.aquilenet.fr. [2a01:474::1])
        by gmr-mx.google.com with ESMTP id f7si355746wmg.3.2017.02.25.03.45.38
        for <outreachy-kernel@googlegroups.com>;
        Sat, 25 Feb 2017 03:45:38 -0800 (PST)
Received-SPF: neutral (google.com: 2a01:474::1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) client-ip=2a01:474::1;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 2a01:474::1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id 6FE3FB565;
	Sat, 25 Feb 2017 12:45:38 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h5sCu5rkeMeJ; Sat, 25 Feb 2017 12:45:38 +0100 (CET)
Received: from var.youpi.perso.aquilenet.fr (unknown [IPv6:2a01:cb19:181:c200:3602:86ff:fe2c:6a19])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id E484FB4BA;
	Sat, 25 Feb 2017 12:45:37 +0100 (CET)
Received: from samy by var.youpi.perso.aquilenet.fr with local (Exim 4.88)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1chanA-00035d-Tj; Sat, 25 Feb 2017 12:45:36 +0100
Date: Sat, 25 Feb 2017 12:45:36 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Varsha Rao <rvarsha016@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2] staging: speakup: Replace BUG_ON()
 with WARN_ON().
Message-ID: <20170225114536.sazkaxnrxbymvml6@var.youpi.perso.aquilenet.fr>
References: <58b067d9.4d8d620a.8af7e.1ae6@mx.google.com>
 <alpine.DEB.2.20.1702241814330.3089@hadrien>
 <3607bae1-f325-4a95-bbe8-d94fcf492009@googlegroups.com>
 <20170225094123.ssback7e4kmw2ett@var.youpi.perso.aquilenet.fr>
 <a3261158-0050-4599-935e-2ad2a13b8a00@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a3261158-0050-4599-935e-2ad2a13b8a00@googlegroups.com>
Organization: I am not organized
User-Agent: NeoMutt/20170113 (1.7.2)

Varsha Rao, on sam. 25 f�vr. 2017 03:42:42 -0800, wrote:
> � � Then is the main purpose of __ATTR is to just write to sys file. How does
> .show handle this EINVAL value?
> ��� I understand EINVAL is for invalid argument.
> ���
> � �� #define __ATTR(_name, _mode, _show, _store) {��� ��� ��� ��� \
> ��� .attr = {.name = __stringify(_name),��� ��� ��� ��� \
> ��� .mode = VERIFY_OCTAL_PERMISSIONS(_mode) },��� ��� \
> ��� .show��� = _show,��� ��� ��� ��� ��� ��� \
> ��� .store��� = _store,��� ��� ��� ��� ��� ��� \
> ���� }

You don't necessarily need to look what __ATTR does (it's a long way up
to getting something useful), but just check how other users of __ATTR
behave, or see its documentation, which can be found by simply grepping
for __ATTR in linux/Documentation/

Samuel

