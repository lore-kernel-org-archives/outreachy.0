Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 626306AD0
	for <outreachy@lists.linux.dev>; Mon, 14 Mar 2022 20:34:24 +0000 (UTC)
Received: by mail-qk1-f172.google.com with SMTP id h196so13827997qke.12
        for <outreachy@lists.linux.dev>; Mon, 14 Mar 2022 13:34:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=uIjdpPN6F60s5rRsJwXClWPargNYl9jgGyI7WwvBm5s=;
        b=R1u0YSSAbzeQXLZ3wiqbP/+LiwVdNAggomGsuVllRnIxLppusW4BbFh8VBxf06r+Ov
         5eIBOIiZHk0PHD8aZeEldYZYyYODtuEbgOg5BNe9PtSxrMqSwniPu+PS54UIu8SMcNZB
         yaxvuA/WVbB0xmSasWm2zsbDrcY4sX5ewk4no=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=uIjdpPN6F60s5rRsJwXClWPargNYl9jgGyI7WwvBm5s=;
        b=vfmIybYLHhUcoPYpH7xhaI6g7oQBIy2sgwxpQTaKmpRZrI0SsxzKnm+JM30zUzGDio
         jPmUZexX6NkMQQeqKZwqvVmV/1eSLOYzf4d2D/Ip2kBCUat2WB3hcuy8PU55dvQ48gVM
         zvEam5FaXtcBfWOMHQNnaHYalYiGvgBTEgYfUKQ8GNjbGO3+aQsKFGdhV6GCcsgDoOuZ
         dFwsPICArG6hTaQwuDm8hNmNKQ7QNQ9OVi4NbMubOxlRp3NXf7mm2TBomTMMgZsqm+mh
         uLByebWRqm28Kl8ZTtrd3CRc4FfM4Hz9ZP8DFxEcxpbcHSKm31J5vfnO0r04sQT0hEV6
         88bw==
X-Gm-Message-State: AOAM532wYOc5DZgB47otYJwiD9eLGt7Zs6Jbabcz9ZPEax/HMmboORA5
	XgOMvoHUO0eV2MO0C2b79n9TsuZMntCVBw==
X-Google-Smtp-Source: ABdhPJzlwtCRcn0xPT4zfZPIhLJhI2UZZ/dvZKIREqhjKkyz6KF+JArfthBI1ANK7Ix4uAWTwZiAQQ==
X-Received: by 2002:a05:620a:b95:b0:67b:2b55:b220 with SMTP id k21-20020a05620a0b9500b0067b2b55b220mr16082067qkh.309.1647290062918;
        Mon, 14 Mar 2022 13:34:22 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-32-216-209-220-127.dsl.bell.ca. [216.209.220.127])
        by smtp.gmail.com with ESMTPSA id a15-20020ac85b8f000000b002e1c6a303f9sm6232839qta.95.2022.03.14.13.34.22
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Mar 2022 13:34:22 -0700 (PDT)
Date: Mon, 14 Mar 2022 16:34:21 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: outreachy@lists.linux.dev
Subject: Test delivery to outreachy
Message-ID: <20220314203421.gbqgx4bn35k7l3cw@meerkat.local>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hello:

This is a test to check delivery to outreachy and to start the new archive.

-K
