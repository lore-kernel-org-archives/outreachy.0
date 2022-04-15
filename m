Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com [209.85.222.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318702F50
	for <outreachy@lists.linux.dev>; Fri, 15 Apr 2022 11:25:32 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id b68so1668556qkc.4
        for <outreachy@lists.linux.dev>; Fri, 15 Apr 2022 04:25:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=SqjIFsJzzoHZuqZEw2EOz4gzUfaHvwhtXgCBjKvNpF8=;
        b=gEokwFh+FBwtc6J9suVBaDrHh96HQEkXuGw7CcbvLIws+Z/CYY8b9AUteo4ogAvUtQ
         CP/5U8HymWj8nqaGPeN8VwfObhAr/otCBFjkFKV8FiKzbca/h4cDYRYcd9hb1GviwSkW
         spq8Ba3fYmFh5FCMPX+XiHiSJ4S3pca/OHEr36kaBYc41WEumc7hqoEAA8zHJrYtehaV
         Zmrzka45vsBHuaAoeQNCbMm4B5OhilUM/RjDBJZ5evxrXh0t8yeVn1FQ9nQtUexz8qMn
         gmZDbC31b0m9y0EgamzfM1LhFyb0o+yiVfWhAD9deMvOcn0SSYoBFJ9YohmdKLcWl426
         Wguw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=SqjIFsJzzoHZuqZEw2EOz4gzUfaHvwhtXgCBjKvNpF8=;
        b=17uKRfsFDXt/2p7+pD/vPW/oxyfa6snAJGMNzjrpSXKH4R9X1AWRjjRAECVgFjmcjw
         jvDqonhNxbJGyyrwbtPcZ2ERkD2pKxTG1NV25GUCcZxGy48eO8mTVeZB3fx71ek01Cb0
         96AQndB5yOr8Crk9h5zKReSx7l+OGFDQfzd1kdFAhL2Xlx9ckM9/T+HyMbhQ1/DLsXW3
         m+pFqyNkvWsjQKd5k34XnpJ7jFgDaU/sUx+NjtLTn29IHHhbVZoC3SFZv/P7O4WUDJJc
         s9qO4Oeeh/zsJ+9llHZOJOu4rx0hySu7lki4CgtN4WcMNkOH/p4p3Y2RcfBqn9xdtnQr
         ByTA==
X-Gm-Message-State: AOAM532tMEZJiUPa3+u6wUuiaRgKFrwGM5emMfiL/OzF2JmZwUSwDJbp
	pyeZp/HSOZ0+zhphTq1EgoxT9rQDrac=
X-Google-Smtp-Source: ABdhPJwe5sAin0IF37Er0DgdJXj/U15PjEztXGGztfuG0pJB8RtKqMtCdBVh6ffDkWebG+P/vZjUgA==
X-Received: by 2002:a37:8a44:0:b0:69a:1301:2474 with SMTP id m65-20020a378a44000000b0069a13012474mr4763808qkd.400.1650021930751;
        Fri, 15 Apr 2022 04:25:30 -0700 (PDT)
Received: from sophie ([45.134.140.179])
        by smtp.gmail.com with ESMTPSA id e126-20020a376984000000b0069c86b28524sm1541208qkc.19.2022.04.15.04.25.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Apr 2022 04:25:30 -0700 (PDT)
Date: Fri, 15 Apr 2022 06:25:29 -0500
From: Rebecca Mckeever <remckee0@gmail.com>
To: Mike Rapoport Mike Rapoport <mike.rapoport@gmail.com>,
	David Hildenbrand David Hildenbrand <david@redhat.com>,
	Alison Schofield <alison.schofield@intel.com>
Cc: outreachy@lists.linux.dev
Subject: memblock blog post
Message-ID: <20220415112529.GA58325@sophie>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

I wrote a blog post about memblock: https://blogs.oregonstate.edu/usageoptions/2022/04/14/linux-kernel-series-memblock/

Rebecca
