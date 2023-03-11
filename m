Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368B67B
	for <outreachy@lists.linux.dev>; Sat, 11 Mar 2023 17:28:41 +0000 (UTC)
Received: by mail-pl1-f177.google.com with SMTP id i3so8785529plg.6
        for <outreachy@lists.linux.dev>; Sat, 11 Mar 2023 09:28:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678555720;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MGRyPbhxcIQY8JScPlM0RGHJ59jOtfLFyIVjkwxMABQ=;
        b=doM9CGqVBfpBKqA7yrdbocKB+8HhvgW+ZoTOkHJwaQcZfWr6r3KsazwQtKxycRMCFv
         /epSlFuuHcnlwwdytmIPNPWZ70H8H/yRLWmPrvbnov7cUaDTwIs0AqJ869nY9n3V0yln
         29yZTKgwXp7ovMfMz8P5sHfxw6ZkCAr4O1ps6k/N8SX4/eT/i69kbgY3GAnCfoy9gqjc
         RIXIhx4aGDmCo6h6vt0NEJrJcdHm5cNTBdv7LU8hy6D36TvAxQ6M2BVMrFpZOptPIP3q
         Ff1TTT3NgaFdv0QnB+xN0gIsi0WVrTHTn1/kkR2Q2ds6Q5fnIg4MPa6IYOdEVxveh926
         M+ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678555720;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MGRyPbhxcIQY8JScPlM0RGHJ59jOtfLFyIVjkwxMABQ=;
        b=PJZ1DSM30ZrUC4LfgqLGy8ohrzjIHiyxjOGrI+442G8AVnbG0GBWm0zrafwSsd90On
         e4W66Ydw+fwD7Tmh5gH9ZsHKV+CqWvStl+hP+JPr7VkZg1w/4EKqW1EIZvaTln1v5BBP
         JjWW61n/1NtOSBXQeKmuF9oSTrG9JNDQjHrNTyTrz1u4lkc0tte63ugujz+xoz3jyrSm
         PNh/WmD3CM3XA6KC3ZtRPHnPmIZOdSiHoWmoF5gbCC9y/3B/zflo642gpbxoqxhsDinK
         vNhFAeidJ92xbRUCboJFJB8rs7Z0RokY/s3ANoWvM7XPnOsiSd95dllkkoCUp+yAdYlI
         25eA==
X-Gm-Message-State: AO0yUKXl7sAwBCBnF4fpk67jvg4I86ShgdWucMTDNoIEDYe0IGTL+qFb
	Ry+feGx7yt9MGUrNdGIqYEzu/mEDg7rLtg==
X-Google-Smtp-Source: AK7set9xReuGC8zF9GZ08GjfX1s1ZhFo2gzcLQb66xrbdStrA2Ho1jzKAKvveDQ56HbXcKXtwCAaTA==
X-Received: by 2002:a05:6a20:65a8:b0:cc:491f:420b with SMTP id p40-20020a056a2065a800b000cc491f420bmr23964895pzh.8.1678555720406;
        Sat, 11 Mar 2023 09:28:40 -0800 (PST)
Received: from ubuntu ([117.199.152.23])
        by smtp.gmail.com with ESMTPSA id i16-20020a63e450000000b004fbd021bad6sm929872pgk.38.2023.03.11.09.28.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Mar 2023 09:28:40 -0800 (PST)
Date: Sat, 11 Mar 2023 09:28:35 -0800
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: error27@gmail.com
Cc: outreachy@lists.linux.dev
Subject: Re: [PATCH] Staging: qlge: Fix indentation in conditional statement
Message-ID: <20230311172835.GE14247@ubuntu>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cf0bf6c1-30fb-4c63-9c17-575c87c986e3@kili.mountain>

Yes, surely

Thank you again.
