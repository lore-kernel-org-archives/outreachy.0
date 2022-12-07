Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B19872102
	for <outreachy@lists.linux.dev>; Wed,  7 Dec 2022 14:19:53 +0000 (UTC)
Received: by mail-oi1-f178.google.com with SMTP id m204so20857001oib.6
        for <outreachy@lists.linux.dev>; Wed, 07 Dec 2022 06:19:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iv7xppBkzzqPyj7+IDPZPeqq/1XojkANHcgbqXc5A+Q=;
        b=RoHUh4mUWkrP3Va9KlMTNxetIeJIjITaIjC9LgFtWDr9FgKz2FxPJ5WIf+pdvXa3hv
         GoX+fKIGHTmXRwqQYnAbkcuNTcrZYsqc7nLTnDuJBoeifjAM31Cmx+ZX6jdp/WCa+zyT
         Lyq8FOOy7UfhSE0GO8dFUFa7NKe/akkw+HQFyIf0PHrI+JCRp67T1chhoeHNqKajjjJt
         1ye9eYfs5v1XGNdEsLjnTu9SClO5VwELimnUPcW21QLTqTLxdtwADL++6ImUQpN76qMl
         Yk2Gd1VKhtcqWM3sWZxc8Lnf9UBSFQH+YYdtGcILB5NifiCiNjjp7EvAXorsK4s9B2oX
         xw2A==
X-Gm-Message-State: ANoB5pn7soMmcbYK/n3PYCvdVyGlhkv1hJQk+FvM50C9H9wXKMJjnUcM
	cfJ8DDalf+nupvIKd29nrw==
X-Google-Smtp-Source: AA0mqf7d54nVIsJian3SGED4RnhboOTPOMm1xYCZfwkvzoS88hMy4GPDNglID+jiUKgLRpjc0Qjpew==
X-Received: by 2002:a05:6808:1117:b0:35a:7142:8109 with SMTP id e23-20020a056808111700b0035a71428109mr34202733oih.84.1670422792620;
        Wed, 07 Dec 2022 06:19:52 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id g15-20020a544f8f000000b003458d346a60sm9651993oiy.25.2022.12.07.06.19.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Dec 2022 06:19:52 -0800 (PST)
Received: (nullmailer pid 2124807 invoked by uid 1000);
	Wed, 07 Dec 2022 14:19:49 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Okan Sahin <okan.sahin@analog.com>
Cc: devicetree@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>, Lars-Peter Clausen <lars@metafoo.de>, Jonathan Cameron <jic23@kernel.org>, Lee Jones <lee@kernel.org>, Manish Narani <manish.narani@xilinx.com>, linux-kernel@vger.kernel.org, Anand Ashok Dumbre <anand.ashok.dumbre@xilinx.com>, Mark Brown <broonie@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Ramona Bolboaca <ramona.bolboaca@analog.com>, linux-iio@vger.kernel.org, outreachy@lists.linux.dev, Marcus Folkesson <marcus.folkesson@gmail.com>, William Breathitt Gray <william.gray@linaro.org>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Rob Herring <robh+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Marcelo Schmitt <marcelo.schmitt1@gmail.com>, ChiYuan Huang <cy_huang@richtek.com>, Caleb Connolly <caleb.connolly@linaro.org>
In-Reply-To: <20221207090906.5896-3-okan.sahin@analog.com>
References: <20221207090906.5896-1-okan.sahin@analog.com>
 <20221207090906.5896-3-okan.sahin@analog.com>
Message-Id: <167042222291.2111846.12061845006174479582.robh@kernel.org>
Subject: Re: [PATCH 2/5] staging: dt-bindings: mfd: adi,max77541.yaml Add
 MAX77541 bindings
Date: Wed, 07 Dec 2022 08:19:49 -0600


On Wed, 07 Dec 2022 12:08:41 +0300, Okan Sahin wrote:
> This patch adds document the bindings for MAX77541 MFD driver. It also
> includes MAX77540 driver whose regmap is covered by MAX77541.
> 
> Signed-off-by: Okan Sahin <okan.sahin@analog.com>
> ---
>  .../devicetree/bindings/mfd/adi,max77541.yaml | 134 ++++++++++++++++++
>  MAINTAINERS                                   |   1 +
>  2 files changed, 135 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/adi,max77541.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/mfd/adi,max77541.yaml:134:7: [error] no new line character at the end of file (new-line-at-end-of-file)

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mfd/adi,max77541.yaml: properties:adc:required: '-compatible' is not of type 'array'
	from schema $id: http://json-schema.org/draft-07/schema#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mfd/adi,max77541.yaml: properties:adc:required: '-compatible' is not of type 'array'
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
./Documentation/devicetree/bindings/mfd/adi,max77541.yaml: Unable to find schema file matching $id: http://devicetree.org/schemas/regulator/adi,max77541.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mfd/adi,max77541.yaml: ignoring, error in schema: properties: adc: required
Error: Documentation/devicetree/bindings/mfd/adi,max77541.example.dts:99.13-14 syntax error
FATAL ERROR: Unable to parse input tree
make[1]: *** [scripts/Makefile.lib:406: Documentation/devicetree/bindings/mfd/adi,max77541.example.dtb] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1492: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20221207090906.5896-3-okan.sahin@analog.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.

