Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com [209.85.222.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373971F949
	for <outreachy@lists.linux.dev>; Sun, 30 Mar 2025 17:21:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743355279; cv=none; b=KB1mB7aAdaCmGAtlQNB2UNSlNGYWDAzTPbuJPjdZQEE2VKWT/MTLB6+jvgCrD9fILe0wLA+xPtJO84IZ0WCkHRh6JeGR2xQA9rMy5p98xUKyzK2kki8+uF25r7BecwMwnvODsLjDCgiVTA1aku7C8xLVkyBVeXxgge4KDKNGCIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743355279; c=relaxed/simple;
	bh=jDK7RQB4C0CCTd3tsleSMGzoX32rfqpCUclwhE86fnY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=q150R4X195PezXNnE8WoGNJ29ACbxVbUAJ0A7Dx8FBG6uXCyvOZYZbJttNte42wL20uVp0VLuIDjyYQlctZpRq/VhaPF82u1mbJo639PvHy8XSzEuGu1ZhEz3M87aihoIq4W8iorqffA0oKmV37CvnTXMZSQ9GNZF0DxQVMc/6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ktTK1AeY; arc=none smtp.client-ip=209.85.222.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ktTK1AeY"
Received: by mail-ua1-f51.google.com with SMTP id a1e0cc1a2514c-86d75f4e9a1so1693078241.3
        for <outreachy@lists.linux.dev>; Sun, 30 Mar 2025 10:21:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743355275; x=1743960075; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3qGaGGh5JPswTULjZOCCySaGWLFI6Ze+R3lGHa+t7OY=;
        b=ktTK1AeYPyd9Ak4EaxpKD9ebyAuluOPo2aQ4SCIe5GS/jebnLNG7HLqEtMdz0yljxB
         kEPjpKDN6ADLskhp0YY1d4BA3KamwYP9rUDbPlkkukB7CdYf+UHAQ1FsfgpN+LgC+fs6
         lLBeEJcFTVPH5cmAkBsvtV1S7wrl6eNbOva8anHrOXQnZnhyWBHQFofFXkuBl5qpEiFW
         KNF7op2fvhGP/HrXm+yPtF8glRD8dkhgK6iMxPs1IbDyn/axyMj0NbsTcNTNopYCVd5I
         n6nbmkIgIavNi6JnWJQhlh1xwnolnoikJPKbNCaFbVZsqFL3P+KhKhXpOUygAcfMhxmh
         fuhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743355275; x=1743960075;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3qGaGGh5JPswTULjZOCCySaGWLFI6Ze+R3lGHa+t7OY=;
        b=nc8YTaAMxEPCrjNR7IeKfrA1nE4otdzmo0MMEX4y4tfYzos8YBXvHenJMwmoRA49SL
         rD01uUBI9uIDHOeIbe+kLaXiO0/hCHraOHxNNj9w88G5t64N2EfkIApxDpAsFUEK161l
         ROnyrMZspWfCtHbujfsbB9kobSHzmES89LyqizN9EOxBU1cgzTDvo7NPZclAY8nHBz2a
         onlGVZEKOfjUwCTqk5BXR/D9tBrchD1wp8EYPlVW4bPi/BW8Ho9dhA5KlZuBAuGU1YU/
         js7cf0kDY/C36/3ZjDMfvQ3risa2JS//ztpIYLwD7WnTIxMlzZ16yYL0W9EGgPXMRU0L
         73wg==
X-Gm-Message-State: AOJu0YwTCbvtr1A96N52aqKN+xnypl35JKElQ7I1Wqp/WKHfK53PjOns
	hot8ePNXv/kogBhFo2b98BoJ4HPojYl8UR3Cu3lHeKUdw2KruQNATYy4iGc1u/j6awsRcKJVf76
	B3xhvOW+HxTIASpp14RLpXBOwy4XySi4D
X-Gm-Gg: ASbGncvaliOGsWVkIHjvmGJX4SmJh9j1adxj0ZT8ag+5d1UB7jLOXSb8PYROCxNwmw5
	lzHbfWHm2AQSF5ucU6grurqxZLriJRd2Qiyvxt1QgSxz+QI6el18Japx0t3zlE3L61Dp6nLQB4S
	3LTGo1NVHijolp/HP2sjnoIcYD15yt
X-Google-Smtp-Source: AGHT+IEZ5GSQg7H9lOcXRZo0OI18mlw2CNuAAV3ZGIp2C/2/YyhHmbDbyauN8AX+fyQWO9WnLo93qS1Zk/POLgUtAFA=
X-Received: by 2002:a05:6102:2b82:b0:4c1:6feb:83aa with SMTP id
 ada2fe7eead31-4c6d38499cdmr4050967137.9.1743355274892; Sun, 30 Mar 2025
 10:21:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <alpine.DEB.2.22.394.2503301654260.23941@hadrien>
In-Reply-To: <alpine.DEB.2.22.394.2503301654260.23941@hadrien>
From: Samuel Abraham <abrahamadekunle50@gmail.com>
Date: Sun, 30 Mar 2025 18:21:06 +0100
X-Gm-Features: AQ5f1JpVrwe_2TL6fRNQCqa7yvvEv2hudWBdGqE3YoJeiI6XyI6TVWbYJ2oOc1o
Message-ID: <CADYq+fZNk=2TVur+GyRow6STK3j4uwH+3JscvAonDPnoDJ9eOg@mail.gmail.com>
Subject: Re: Coccinelle
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Mar 30, 2025 at 3:56=E2=80=AFPM Julia Lawall <julia.lawall@inria.fr=
> wrote:
>
> Hello,
>
> The actual internship project will involve using Coccinelle.  Some warm u=
p
> examplesin using Coccinelle are available at the following URL:
>
> https://who.paris.inria.fr/Julia.Lawall/outreachy25/
>
> These have been pre-tested to ensure that they highlight some
> interesting changes that you can make in the staging drivers.
>
> Let me know if you have any questions.
>
> julia
>

Hello Julia.
Thank you for always being so helpful and for your consistent guidance.

I have been able to test the SmPL scripts on some drivers, though
without making the changes in place,
just showing the diff.
But I would like to ask, are there specific things we should do at
this point with Coccinelle, or should we
send patches transformed with Coccinelle?

Adekunle.
