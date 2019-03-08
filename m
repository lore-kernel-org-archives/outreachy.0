X-GM-THRID: 6665843056733847552
X-Received: by 2002:a02:712a:: with SMTP id n42mr9811922jac.15.1552014618893;
        Thu, 07 Mar 2019 19:10:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5e:a91a:: with SMTP id c26ls3097620iod.0.gmail; Thu, 07 Mar
 2019 19:10:17 -0800 (PST)
X-Google-Smtp-Source: APXvYqwAmWLAikL0hHBwDbCw8vTJ/kvMMtpB6+HOI6lHnPhfuGD21uz0PFPX+csUr46DapEsEBJ/
X-Received: by 2002:a6b:5b0b:: with SMTP id v11mr9417471ioh.19.1552014617959;
        Thu, 07 Mar 2019 19:10:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552014617; cv=none;
        d=google.com; s=arc-20160816;
        b=MSvhXnDM4tmF3niZEl8MWfBWmXLM8ORZoVv1cn52X94Fh2Ij0jebYPC1Rkzyp9zREN
         ITzA7KPlpZ1UQ4cY5/K+rK0gLHByIVKTWBArloiHlhfHT28RYKPokJWtQM4fIUB3Oxfx
         wh3cn3PVj6T0B8Ale13PqbLb4crak4CapDRnEYNgpJGvELGG/pGZM/Pj5JuJeeCwvVo0
         OLs7BotmPSIwRwuHoNQ9pBIwFSyFzCl4gpO3O0NoAZ+Dc8rguLYbvtz2pUDj0XQFkFGB
         EnaR3Tv48vDi9Qnn3o3P1wguWCKa/wz0Ib88VZpj+xNjaF0UDG9lUsfExcf4wendk6WE
         3ZIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=FQDcZwsmTrvBE6Oi1Pr8lvawX9xLIwjZ1gVzmtSv7U8=;
        b=RzxtKnB+oYOfcFznSWkYvw5SxFB6U3ajK5a4eZ1Ne/tVSGMlumy5jNjeZeSySUWhWW
         YAMwfFZ0PKTuC7Xw49XqtOITzXBNSqArdn7bYn8RL1JjX8DxniZS/y+j74w5TUje4OCP
         /Jt0iSb+jo3jYKWJuKE2WHAgWkWX6PZPvTAk5d/47YPvTx+IJrZkPXNjoSspAHNgalMF
         oCrzwxrEkvSM+vDCUQ7nTFQi48Bsc/Vb6k/XzBeFmVzaON0SYrLB29UAXDCdrm05Sx31
         Uz8cYh8PhW+W5cLFojxE+NzpN5i9Cn3yNiUIHiK2oO29vpehYx9swOltqhJiaE9+FSBH
         RRdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M4ne8Kbe;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id c191si443964itc.1.2019.03.07.19.10.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 19:10:17 -0800 (PST)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M4ne8Kbe;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id 125so12684264pgc.12
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Mar 2019 19:10:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=FQDcZwsmTrvBE6Oi1Pr8lvawX9xLIwjZ1gVzmtSv7U8=;
        b=M4ne8KbeW0jm95A3EeL3OY8RrN/CUzHnyQK+HAFB6aSbVNTpZjpueRUue0pZEmySGa
         BmzzZN1d1JYR3MuiTB3WUUwawQWb3yDGWDmdWpFTR6R2aWpQB11TD6X6GZ11tfz/+Qm/
         37fn8uxPxWSOskJkSWhwuoIZ9XXU7EjTUxoQ+05xj0mQ9VqDHp8mFOpV4twfcGbKr/xn
         I3AdAHrTwcc33TY4l5YbaL096qmEE545AUMzc85IbVborlZiMqyZuW7QuWAiD2+gsMOe
         gsMJui2sWmXSwmWyYY75ChdTs9XaeWjC6xifNR3IEDbUKF8vOY0QsbuzLYTLQf4GWY5r
         OZ1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=FQDcZwsmTrvBE6Oi1Pr8lvawX9xLIwjZ1gVzmtSv7U8=;
        b=TDEPBGTr4UFL9/8Jod++/lwDKqbgX6xm39xtr+DSOkINirliDfNKRA4thhREs7p732
         HnQXHgTEGqEFgiGzFc9zrDFK1lLruva2egDoFsnfUgkM6j+brIa+HHBK7Od2jEP2yCez
         MrQKw7ZX1xO5AFPFsuXDoP7hjkXTrAUeGqXDrBGUJ1dmW+zMvcyuSEBdCxJJt7QREStQ
         ia9VPhpteNNtDV9SXY9K8L7eqnoJX34Jy5NjRbryim/NbB2zJh5WeHN8E7ExEOxg6U+U
         1vVoqxZuQZyEvgBI7gUGD3w4KKFGWZnbroI7cFMvkCQ3XMj2QdX3iKdoNyOECLCYfnw+
         +vtA==
X-Gm-Message-State: APjAAAXc/Ieme8d7CjuoKRmAXx3oq2Vux3rRkZ492euOBUvJj/FZfVU+
	bs9TruISnXBMw+0OHhAuRic=
X-Received: by 2002:a17:902:9003:: with SMTP id a3mr16208502plp.2.1552014617364;
        Thu, 07 Mar 2019 19:10:17 -0800 (PST)
Return-Path: <etsai042@gmail.com>
Received: from debian ([2001:da8:d800:199:7e1:7347:f861:5837])
        by smtp.gmail.com with ESMTPSA id q7sm16626913pfa.119.2019.03.07.19.10.16
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 07 Mar 2019 19:10:17 -0800 (PST)
From: Wentao Cai <etsai042@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCH v3 0/4] Fix malformed SPDX-License-Identifier
Date: Thu,  7 Mar 2019 19:10:09 -0800
Message-Id: <20190308031013.7952-1-etsai042@gmail.com>
X-Mailer: git-send-email 2.11.0

Fix SPDX-License-Identifier in drivers/staging/most/dim2/

Wentao Cai (4):
  Staging: most: dim2: Fix SPDX-License-Identifier in errors.h
  Staging: most: dim2: Fix SPDX-License-Identifier in hal.h
  Staging: most: dim2: Fix SPDX-License-Identifier in sysfs.h
  Staging: most: dim2: Fix SPDX-License-Identifier in reg.h

 drivers/staging/most/dim2/errors.h | 2 +-
 drivers/staging/most/dim2/hal.h    | 2 +-
 drivers/staging/most/dim2/reg.h    | 2 +-
 drivers/staging/most/dim2/sysfs.h  | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

-- 
2.11.0


