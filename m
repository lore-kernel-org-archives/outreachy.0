Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B714C9D
	for <outreachy@lists.linux.dev>; Thu,  5 Oct 2023 06:54:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nbrrCI1e"
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-690ce3c55f1so552972b3a.0
        for <outreachy@lists.linux.dev>; Wed, 04 Oct 2023 23:54:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696488883; x=1697093683; darn=lists.linux.dev;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RIRnYItz9aumYmGgy+9MDmKXqoQPWfC17ShUMbiFd9w=;
        b=nbrrCI1e8/pih0Yc3BAey1z6C1KdUFrA2S48WCfIkTRGVfsUXMUZ8o+re5/PXT7Auq
         ubTD4BWGJqt8D5gYvLIgvdJicbeixNs6SdF0Jf+OXlKxhvfcWGkp7CYUNAIUWR7TK87a
         2LtgWrP6nR7H2DT5exkgHNQsPN+c9RF0cF1GXWZLj5Qjp9bXn3GrqhfId9eR+64ecS0M
         Zk8nLCnqWvi5zKfd8Q2fC98DOcN35zzkfI8O0yLdsrIrzHZBenlyoajt6MORtsLV32Uk
         UFKAlBxqpDRGkAnVetG2CpV1LUaOWKv7pYUPTJTBVVlDeUYxaIxXNSMl0x6qNSqCicDd
         dxDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696488883; x=1697093683;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RIRnYItz9aumYmGgy+9MDmKXqoQPWfC17ShUMbiFd9w=;
        b=piiMM/EHQvhRmCZNdihSW9MVIwFeeTIYtc0qdAoxb0mugOn7NsaAoeBfruuUEt24zG
         F/IxkVh4gn2dyT6eidVEkOdlQK6Kty3zu0TUXxYwa2Cv7pxK62bKsDhhH7jvOqfkb+VS
         WR8jqZJuL0QFmvXns/2yX+bTH7MSTVe1cmp3k122ljuL7f6UuNkRu+t8hdFZWMIodANh
         J/5+NaaeyxPZHW/tWLQy9NgFxs9IBfX1peqI/8lF7d3w2qNzOxPCAMLhi7YPNdvO4ZER
         6ynz+u+WGdKGXitJGFeedT+e9kflh1+kJv4NH0m+N+W/lxCetkD0eDiwU7AYIwd867sd
         mvIA==
X-Gm-Message-State: AOJu0Yx4+3Mm8z0ls4snbYQNsj776gpkCFM1XiJq3GiZ/WL8U4OH0ZJE
	TwDYdCee0tIl9TSoMCIhz9XY5soVSSPVnrE5/XnKA5dFxD0qEPA1
X-Google-Smtp-Source: AGHT+IGqCbdTZUYGANl8UGX8r6b4xMt8YQ7nbwuUV2SHQum2ZRR6qai3fBezFeTYqIhQh4dmPcpzPMsfUR2gIOyCHVk=
X-Received: by 2002:a05:6a20:7f9a:b0:163:a041:336c with SMTP id
 d26-20020a056a207f9a00b00163a041336cmr5271296pzj.48.1696488883365; Wed, 04
 Oct 2023 23:54:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAJHH8bHfnuwWa-NQOpypQrgWTWuqYGdTuptVOz=9h0uG2mVkEA@mail.gmail.com>
 <ZRyTH0WyHd3JJnNv@ashyti-mobl2.lan> <CAJHH8bEtKMYJ2RUn71uHuzNDUzEFNLQMxumKnp8ezb6pvxvGhQ@mail.gmail.com>
 <CALPt=awuCRF3_Z5-Qh3biBBEuS7fVkvxQyfFcxuv8Snww6csMA@mail.gmail.com>
In-Reply-To: <CALPt=awuCRF3_Z5-Qh3biBBEuS7fVkvxQyfFcxuv8Snww6csMA@mail.gmail.com>
From: Isoken Ibizugbe <isokenjune@gmail.com>
Date: Thu, 5 Oct 2023 07:53:18 +0100
Message-ID: <CAJHH8bEvLeEytHH7FR-eiGeshLmjfj9syjNa0ekuDbgT2q+=3w@mail.gmail.com>
Subject: Re: [Error]
To: sumitra sharma <sumitraartsy@gmail.com>
Cc: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Yes I copied the .config file of the currently running kernel and I'm
using Ubuntu 20.04LTS on a virtual box, I renamed the
CONFIG_LOCALVERSION in the .config and commented out these lines
CONFIG_SYSTEM_TRUSTED_KEY
and CONFIG_MODULE_SIG_KEY, then ran make -j4, but the kernel has been
compiling for 10 hours now. please is this normal?
