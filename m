Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 917F818C930
	for <outreachy@lists.linux.dev>; Sun, 13 Apr 2025 09:07:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744535264; cv=none; b=Q/efpYXIoXzpPkrqWxMoHJ9Wa8YcMZssTqbdIxj4pLmb08sLbgXMOG/cdNLsyBwTs/TtIoxO7VpMpCRWE+UtedyuSGLrNsTuYqUxRgE1Kji7KUTUGopF+5YAu+BMK5tXBDlZ980h5R+XjSlV6vggbUfzegB8OKPNV2xygMn4n+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744535264; c=relaxed/simple;
	bh=W2nNlRLHFqTRuspkuwPPavseX1HT94j8dIBAFsf48kc=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=VkR4AW4PcarCpAOKfvWVKNx1neg3gvYpCZYEJBwKSfP8eVoo7ghc802LEzLsDAZWUHF/320qS+nduRQBQqkN7buylZOTvHIZwGOjbhqUbvKqsOGUJTUIM3JL1fMhBeHihCAKDqCEXfId7QDQ5B2I9JSxBb9UeRX9Wlqa6d1MSK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ah7tQ6r7; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ah7tQ6r7"
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-ac25d2b2354so534987466b.1
        for <outreachy@lists.linux.dev>; Sun, 13 Apr 2025 02:07:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744535260; x=1745140060; darn=lists.linux.dev;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W2nNlRLHFqTRuspkuwPPavseX1HT94j8dIBAFsf48kc=;
        b=ah7tQ6r7/kPg752SXOOBVt+7xelIwoTcf85/TnzGK7ZdnF8cmfMCLKYdXyuFaLkGRY
         BJLUwLALzeSWMcYP3ZeLuQ4D1AivCLjEcEOSMoI8s+zkcivwWMQZcbQZv2lHMSdYVRjf
         UYxxVf/PoSslkDGp7l2N31CfvzYWBsD27faNIjwQjMvhd6bArUORZ/PVww3uso+t0qfz
         C90k206jlsK04bmnqHZwVcliiC5MVqlEG2jI9IHfKyEtGH/5BkTZ2p2ueqzRNLXdqgZR
         lmc6hReHO/X/DuaS/lGNTZXNLsZSlD5BtH1rjqPZurHXbL287YYbYHiPSbJlGvMU6QZq
         tEEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744535260; x=1745140060;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=W2nNlRLHFqTRuspkuwPPavseX1HT94j8dIBAFsf48kc=;
        b=rue7ltdlBXvgBZdZLnMufGmw84vX+zn2i4+qvHXWUKMBfvLQ3eUtLZUcAALS8VvjCt
         NYcABsH53LKZij0IMSZAwDCtVuiyE74hwpBk5RYT9v5H9eT0u375x0djTFg1eInbmWpO
         qfCim5bbtQb0Pf4lSwecXfT8JduUyRFwRMd6Db1gOQd4VehGS3AsoKJHkPyc5RLlPZPh
         aWXq0t3/JXjPPB0VxZBt9kcQOZYxbgBd4Kv2m4IBBi+/aALWNp46p5Ctwze6k1kHhuCV
         jyyakEGCPLTUciWtM0QCXsvGrKRgzmW/9mPfwmbUq5zoJC8rNJcrPf157q53EDhZsVnm
         mtUA==
X-Forwarded-Encrypted: i=1; AJvYcCXLIMShRYEgcVT/qR+yRDSYqURqngtYpddxZ2ypRVpLMfGyUrZnIDiu6q2rirOgPrp9SfuBuzQbxDc=@lists.linux.dev
X-Gm-Message-State: AOJu0YxdObXQwC3FIDwwy9mUssQUAPOOZRBoa4y9jr/6rdF/+Iqkj2Wi
	PwDUrKHoy/iKm4TlpTnK/Ypu76wbgRaSspumRFyPmQFCJXU7nycR
X-Gm-Gg: ASbGncud4BdGpOmraZrF1+1W7iK/sxC0YF6ZjCa8JF+GS7zzI8r93vmKTA26OVQyaqx
	6puHYL8TmvqUqFxpCWofzc3dMrRuNWt7SkiKlhUL6tbccM3QBvBWVcaROiEnv5KXyy/CwMQ4pQ9
	6qvT8QhpnGy8YNksX273Egn6cOsjXNQI49DcPamxBqlxx7b+uT1fMoec00LrmAQMLEBlcR9BPO7
	+0xq1Nwdx83r5zEWjmgSvR35D4fNn+va7LfAgSXafcAkz36UGfEq66W8dUi3jGgcOpREkdVZY/a
	eie5DYloZroc5/njCezB+mnqG8hLppnGYL1H29diiwmYY1xY21I1
X-Google-Smtp-Source: AGHT+IGGtWTfV3Yc9120yhk2W/hQWbO+BpCqysTCw4ycypghN/QUuYMZRRul1TVVHZyNPHUimcb8Qg==
X-Received: by 2002:a17:906:6a12:b0:aca:cb18:9ad0 with SMTP id a640c23a62f3a-acad358518fmr835556366b.45.1744535259428;
        Sun, 13 Apr 2025 02:07:39 -0700 (PDT)
Received: from [192.168.211.251] ([41.81.219.87])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1bb3508sm704513866b.8.2025.04.13.02.07.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Apr 2025 02:07:38 -0700 (PDT)
Message-ID: <d0dd7535ab9106ae8dbeb363ad4b6616660ab74f.camel@gmail.com>
Subject: Re: application
From: Erick Karanja <karanja99erick@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>, outreachy@lists.linux.dev
Date: Sun, 13 Apr 2025 12:07:26 +0300
In-Reply-To: <3b183d22-55e9-60f6-aa7f-e0d2a27cae7@inria.fr>
References: <3b183d22-55e9-60f6-aa7f-e0d2a27cae7@inria.fr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3-0ubuntu1 
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0

On Sat, 2025-04-12 at 19:45 -0400, Julia Lawall wrote:
> Hello,
>=20
> The application period is coming to a close.=C2=A0 Applications must be
> submitted by April 15 at 4pm UTC.
>=20
> The focus of the project is to find opportunities for using the new
> cleanup-related macros such as scoped_guard and
> for_each_child_of_node_scoped.=C2=A0 Please take a little time to look
> into how
> these are used, and include a small writeup about them in your
> application.
>=20
> Your application should include a timeline.=C2=A0 I would suggest to
> identify
> several of these cleanup operators and plan to spend 1-2 weeks on
> each of
> them, to write a relevant semantic patch, test it on various Linux
> kernel
> code, and submit patches.
>=20
> Let me know if you have any questions.
Hello Julia. Thank you for the update and we will surely look at the
cleanup-related macros.
Thank you.
>=20
> julia
>=20

