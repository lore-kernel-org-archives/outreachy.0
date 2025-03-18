Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C00A1917FB
	for <outreachy@lists.linux.dev>; Tue, 18 Mar 2025 17:48:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742320134; cv=none; b=XPfx97UnNxFJtVjnlm+r8yfTyqHEdc31BrSHk003VfMPveDbHtGdhDi9QJBzcocrbPZ09QZptsacdfed4FKkoJYbGfe5THv0Jek0rU9DwJUSPpp8ync9ouSsDLj6mdZeFt+gYj+HvyKdsTmKL4f1963Vlq66ykRFdzii6fxgeT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742320134; c=relaxed/simple;
	bh=ZEqtf6iuRubVwNNBmbGNMeXrFMOT2teOT9cGa42B9DE=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=FeD0WcM/oUUMn0qQsqWS0jMbDZ161wPL1rt38HxgwAr/V888qPTn4so7FS8boJWJ8fJ+wNOUPty5FChSNxDSll5gAVv8A0iCuT03J+sEFrf00H0wuBc4zZDX/mNfL/W5E935lN+ZJ1kkT22kPtp1BA3i3Gp36Ml674j8OpOt6AA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GoBI0Fuj; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GoBI0Fuj"
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43cfe63c592so40408395e9.2
        for <outreachy@lists.linux.dev>; Tue, 18 Mar 2025 10:48:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742320127; x=1742924927; darn=lists.linux.dev;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ZEqtf6iuRubVwNNBmbGNMeXrFMOT2teOT9cGa42B9DE=;
        b=GoBI0FujdzDudS9/ZW7ocN6w3OfkoFMjTreK4rJVmj2/8p1fPHt6FDSEX6nar3NPAX
         RO+XyWWaG6v+GYVWjvP7sC/ySYJhLQ284Ugz2JUrYK2hqOk884Fu6Qlkwi9tucPVw1h4
         mlbv5DXOFpoJ1Et/z46vtZsfA+GD0tW+bcBOsA6l6JjVXH8bBF6O5HI5+1FUcUMfYhPx
         FVw+QS/3mXUp15WrKlwaMkl9eof6pvAGHw7V0lPgl8hzJHUeL4e/8JSq9QjIxLXB5vPo
         OF/ZClGZveUJ1hxyGQHvlkWAoZZSabEgek/SyQ1WaTSZG6ycEA+JRbCJTJU1nj/gosXv
         9/Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742320127; x=1742924927;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZEqtf6iuRubVwNNBmbGNMeXrFMOT2teOT9cGa42B9DE=;
        b=EzFPRB8z5A+5sYsXOpHctqa5G5zkBWSJi2EghzyqrcLxevQ5qz3m4NcLsesFR9kcw/
         LSN6OJJ0QLfcIv/heRyuos91c29neWxvtTIDHnAznsjCilvHCO7Geho3F8dB6VNUai3/
         VUxV7Lt5QHZ3ElH06PfRGXeRlSNGc/zAIGqxFgKz+7wKg/yMWQ6bgwO6IlnYpjArF38/
         xGQkZOvImtDNJv6MAdcNMlflL3GuzCpBhxzyGbHCVg6lXCgj4xHf/vSr5cgHVmaxa46Q
         5L9eMazv/v9dqO2Lp5pTyQ+QU1H28vXHnPowZ7q0QMZzvfzzOs5+SBviIVNrG2na4Ueq
         6nqA==
X-Gm-Message-State: AOJu0Yw8XZu5Y8aLdYSiGT+H4vvY7RurgUotwAYP9Tg/KC3tEmxkAzfG
	zkgkmYrsOhhWVD7a9HrCHBwJmNtnXUpH/pX40d7zQN8yuxQka4Frmnpk7istGEcbB5CROf4CNlh
	0uRuARbi/HQd+CWT+mVeoQ/ILrHuA/rj0CNU=
X-Gm-Gg: ASbGncuO8KiMOjm9ILTl69VMu/g7gm+oC1rkfTySX1l8JJz49lR5mB9d+SZGZOpVne3
	4OqZrSLfZf8KzF0rIRNQO8O8f3IKzIsPsRVt6vCWeHZTaJJFngTenURFNBSc6Tb9EKv4gkTHXUU
	eX+snsYkK/KZqcmoifXMk2hu4ddLtY
X-Google-Smtp-Source: AGHT+IFE/9atg4nQ65sHnymm7nNY/V3kpABkBvvJwwDE3UKTiVgh2WuIGlzzhupVgRq4rdw9HyCj6gCLui2Zo3cLV/g=
X-Received: by 2002:a5d:598c:0:b0:391:476f:d3b7 with SMTP id
 ffacd0b85a97d-3971f510ec0mr16958101f8f.49.1742320127080; Tue, 18 Mar 2025
 10:48:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Samuel Abraham <abrahamadekunle50@gmail.com>
Date: Tue, 18 Mar 2025 18:48:39 +0100
X-Gm-Features: AQ5f1Jo0k86TETJj485-OPPrq_oI5wfNIKniZxJzOQcIpVPnMPyubi0PxdzhMEY
Message-ID: <CADYq+fZz-ehjB=mFOR=EKm016Qgm1JJ4z2rxJDZdNBSF5PjBtg@mail.gmail.com>
Subject: Outreachy Applicant Introduction
To: outreachy@lists.linux.dev, julia.lawall@inria.fr
Content-Type: text/plain; charset="UTF-8"

Hello Linux Community,
My name is Adekunle Abraham and I have been accepted to participate in
the Outreachy Contribution phase. I am delighted to contribute to this
great project and community.
I can see that instructions on the first steps have been given by
Mentor Julia which i will follow up on. Thanks for having me.
