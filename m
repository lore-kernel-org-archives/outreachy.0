Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 128947B
	for <outreachy@lists.linux.dev>; Sat, 11 Mar 2023 17:36:12 +0000 (UTC)
Received: by mail-pj1-f43.google.com with SMTP id l1so8233817pjt.2
        for <outreachy@lists.linux.dev>; Sat, 11 Mar 2023 09:36:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678556172;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CVqMUKvRvTonrVjTdTmTHAQN1Hq9IhIt7e8TcVfN4Xg=;
        b=qRcjiBpaIGLTjcL+G0JJzpZF6svxxbkDpU2jmxPgfr1mLyq115kATF4d7fJrSUVRYF
         2ZWEKoFVPk+xbbf42MUmYHLsdWwH6dZAyQosUkI0+4rN6z8lpzQb+6Zvx8iF640e/qnX
         HgO24PS1A+NFUlgDTo2ollrznaGn9cB+4Lq4dAa1k72ihYk8R2ejXDlNRZ955pZwT1hJ
         2Xv9f6M65Twx8dKIl6T75H2yEBYLetwRxZP+s/TOI0jQt3PFUMmHISQLU5UTs6zkHsCv
         Xw32/vx+P0BZ4py8tc0UCVKRfQnh3MCQ/L8oeefn7gOr5OFY2sQOG3pdJB6mC+NbNUv9
         wI2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678556172;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CVqMUKvRvTonrVjTdTmTHAQN1Hq9IhIt7e8TcVfN4Xg=;
        b=ZxutR4vmHWfXM2TCvFjJHfmBp1e06tfxX31w4Rh7Y6GIfn43ejxcUl0BQnWYLNeu48
         Z0MPB8n969jyjP059UI8NSkdnKOyDXgAgf17j1espffZ250oHIp39xke73FjUVSXCKFx
         DuD4U8KNnUFTKDcshZniVZOguTaxQQQugBFsFDXY+HkFnz70x26cZc6u5GzBkVloDmYz
         /WeWZplf9XZbhkU3PLu6YVIywU6oeUu4qDk9bka0kM0MbCk8YYRQ40VLzRAfLp2HZ6Hn
         le/AHQ5qEY6IgxAkIT7JC/1DHPjBF02Xky1twrVq0btYV4QXLVWRdBa87N3e5OcYJaX4
         PrnA==
X-Gm-Message-State: AO0yUKWIXqDEKrL4LTLpqu89hOP4JAt7UsfNy7H9dS4PNSIbH5yLGM6V
	bvLaa/0rzNulQoOgo0qLZB3PkvusQbll9g==
X-Google-Smtp-Source: AK7set+kFZkO3sN9IQg5agl/sdeQcpt1BWLFryAhW8xhZbVPz7YHsXDKT3tdC0FEBF53/TdpIC/9bA==
X-Received: by 2002:a17:902:bc49:b0:19c:ec6c:4b36 with SMTP id t9-20020a170902bc4900b0019cec6c4b36mr25645146plz.66.1678556172166;
        Sat, 11 Mar 2023 09:36:12 -0800 (PST)
Received: from ubuntu ([117.199.152.23])
        by smtp.gmail.com with ESMTPSA id lb8-20020a170902fa4800b0019f3b3531b8sm27612plb.65.2023.03.11.09.36.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Mar 2023 09:36:11 -0800 (PST)
Date: Sat, 11 Mar 2023 09:36:06 -0800
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: error27@gmail.com
Cc: outreachy@lists.linux.dev
Subject: Re: [PATCH] Staging: qlge: Remove parenthesis around single condition
Message-ID: <20230311173606.GF14247@ubuntu>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20838efc-e8ef-4696-9a27-958bc5aab19e@kili.mountain>

Since we do not have as such specific mentors and  rather this mailing list is our mentor and guide. I was thinking of updating/fixing this document under KERNEL NEWBIES ACCESS as the coding-style document is many a times referred in the firstpatch document.

Regards,

Sumitra

