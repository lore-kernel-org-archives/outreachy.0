Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6735E46669
	for <outreachy@lists.linux.dev>; Thu, 19 Oct 2023 04:11:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JChDdINQ"
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2c5028e5b88so88627181fa.3
        for <outreachy@lists.linux.dev>; Wed, 18 Oct 2023 21:11:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697688699; x=1698293499; darn=lists.linux.dev;
        h=cn:content-disposition:mime-version:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=myuCYeJM46kBGvhwTJjYjvzOGKOZ+6IkjM9iYH2ZIlQ=;
        b=JChDdINQefK4Y/bVmqSuJihaYjlH8oxUkKCWzMr6huF34GloBYMh9+x4fsNfrdhNU6
         nwmYbSwja0zECYmirl5W0gaSWIGxHTTw0Ff1CvHcOw606FTNJ4jX9zK+BEMSJlmnZhdw
         aKcE5oDYtwPNISInR5EEyutdaP/v3M3zF0/l5L3wNnfyhHV8Y+MJcEZJ6Ea208rbLuVu
         iLsLll7cuI0uTKWXofszcaRpABnUcvPSW/R9pqjTQZSzy4fQmrJ2AFZjgaecW0ziZ5Xg
         y4BbfD86dR0e7QAk2mXNbUxk9oEYL7IA12eOUgQoIjoBD6O3U53eoqjowReRhtUhcfH5
         0nJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697688699; x=1698293499;
        h=cn:content-disposition:mime-version:message-id:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=myuCYeJM46kBGvhwTJjYjvzOGKOZ+6IkjM9iYH2ZIlQ=;
        b=LVcHnb3cOQ34Hz7xujX4HCNK+jfVCiyOEcl0NI2zc4364hHTYF2mwQ/90k1qmuChjj
         w6b29xxTX1+C6EXnr+gxVeB8ig4U5M01iIgasgtWoG7Fs0QBZKkA6zGQV5r2V+YeKfXV
         F08f+vtP8LMnfLs/QIOQB2OoCbkGdA7JfxzxZops/wIwFmEDOLK8EZNsvqDAvhiWuY3v
         EHOLYKCk62jYRoI74rIDVa0VJq8klVT5N8VlxBjc5huUylpOgOzq88gTfU7OSu7ZXAV5
         KFo0osCsSQb2L8zOooI4mytq97u1IpiZ0EyPDEdDUGIkOq5RNif3BNwgRaySOw3tqC+Q
         LNOw==
X-Gm-Message-State: AOJu0YxleLhY8UE7MjCJDI+6xkME9zllXYgh1w78OVdbtJFuHd/il+jm
	Mh5M80jzJ6U9osVyeJy7hMDVVg==
X-Google-Smtp-Source: AGHT+IGPD/XShFyYcXcP6LTLE7f542kIUhnUaL0S94qudfW/4Kjq9wloGBXpkYF5vY5HTV0XjXLkRg==
X-Received: by 2002:a2e:8ecc:0:b0:2c5:115c:2d33 with SMTP id e12-20020a2e8ecc000000b002c5115c2d33mr517582ljl.3.1697688699320;
        Wed, 18 Oct 2023 21:11:39 -0700 (PDT)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id h17-20020a05600c499100b0040772138bb7sm3234160wmp.2.2023.10.18.21.11.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Oct 2023 21:11:38 -0700 (PDT)
Date: Thu, 19 Oct 2023 07:11:36 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: ksummit@lists.linux.dev
Cc: outreachy@lists.linux.dev, kernel-janitors@vger.kernel.org
Subject: KTODO automated TODO lists
Message-ID: <369bc919-1a1d-4f37-9cc9-742a86a41282@kadam.mountain>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Cn: outreachy@lists.linux.dev,kernel-janitors@vger.kernel.org

Yesterday someone on my lists just sent an email looking for kernel
tasks.  This was a university student in a kernel programming class.
We also have kernel-janitors and outreachy and those people are always
asking for small tasks.

One thing that I sometimes say as a reviewer is "This isn't caused by to
your patch but I noticed something wrong."  We could add that kind of
thing to a todo list by using a KTODO line.

KTODO: add check for failure in function_something()

Then people can look on lore or use lei to find small tasks to work on
or they could use lei.

lei q -I https://lore.kernel.org/all/ -o ~/Mail/KTODO --dedupe=mid 'KTODO AND rt:6.month.ago..'

Then grep ^KTODO ~/Mail/KTODO -R and cat the filename you want.

regards,
dan carpenter
