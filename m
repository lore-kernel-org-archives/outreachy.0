Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC8C34121E
	for <outreachy@lists.linux.dev>; Thu,  5 Oct 2023 19:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dm9lwE+H"
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-3af8b498d30so836028b6e.0
        for <outreachy@lists.linux.dev>; Thu, 05 Oct 2023 12:08:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696532901; x=1697137701; darn=lists.linux.dev;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=R1kkqo9QmpnHHUD2S3uuimrOYgov6y2c/AC+G8+eXmA=;
        b=dm9lwE+Hp/xm0qj5QQ9w/R6f2vuNbLyHXwaUSt8dDsROsYsvn+mgGsnlWkXfxAlwpy
         /FqCQPGhzQzKx0ny/fnCK5ia660nKMf2IGO2VrMX/OXyT0nqL549Q14+6QF1B/VE3X0w
         NAvHtBP6Rkw2Y1Uo8h71H8Aa83nWE0zoWd8MnkB9Erx2CQUaHmzY3RjsjCgretUsiWSZ
         h9XATap8L4aC9FADXb/iPJ5ZxPUndb6SEzhc1MRCsZXSlk1scPCmtem6ck6Sr5WMclvS
         5QYogVGEy/N/rwNb49aleOzfMPh2IiQK50WrJf1xiUN/wzFOwCgply/jfOVAscjkBbCt
         J35g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696532901; x=1697137701;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=R1kkqo9QmpnHHUD2S3uuimrOYgov6y2c/AC+G8+eXmA=;
        b=K0FCn6XHSq186wQlAFgLyPoMwvbf6SBkG1kH9BOHVKfJQLB2lf3NUgvOBbfdzFmo4S
         cfc5Q15bK8jJwCg0bnnAqU46WqeMoFR8r2JqDd+1qBMUlpZf06yX47htchFELcGMjSXO
         BMGAmOsdXwJ0XkqxquzriWDXXmrlEVJZe+dovh96NjwJ0tpM3NBhTDd2Mv8Qzq1toQxp
         xVXOVYmziKzJq+ufVtCmczjzN042HG6bedOEc3Jh0B1K8iOfOsNR6MueDjvNhamsU0z+
         s3q1xrhv3yMfnuxvgklDY3kOXfNFXfBoYsQwfH2D4DyvwT5I5wfSiKcjnbCO3H4VKduK
         H6PA==
X-Gm-Message-State: AOJu0YzuWZw2sek/WSLZRO2HcxhR7PCvu1PwYwoR0HGc1rEgcqb5VYqS
	DkW5TqfV3ttHT1i3HtXBaz6Ig7hXEfuibNlU2Qg4ttkZr/s=
X-Google-Smtp-Source: AGHT+IFgUJgGKYbMdyVTmU/eBc1DHTfs0SmbeL2+y3ECsIyVOeLf0nRCYznPqrKtFU8kDCGjJ6uOd/RxyxpAA1En+JE=
X-Received: by 2002:a05:6870:5608:b0:1de:84a3:bb91 with SMTP id
 m8-20020a056870560800b001de84a3bb91mr6866090oao.16.1696532901557; Thu, 05 Oct
 2023 12:08:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: K <maduechesik@gmail.com>
Date: Thu, 5 Oct 2023 20:08:08 +0100
Message-ID: <CAAFs_TG7rZdcfe1My89LX2cpS+DNSfQi5zXQ+L9m_wXWX_5FFw@mail.gmail.com>
Subject: Re: [Outreachy Applicant] Introduction and Interest in Contributing
 to Linux Kernel
To: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hi Kenechukwu,
My name is Kenechukwu Maduechesi, and I am writing in response to the
recent email regarding Outreachy and the opportunity to contribute, I
picked the - "Extend the support for regression reporting and tracking
in Linux Kernel".
I'm enthusiastic about the prospect of joining this community and
contributing to such a project.
