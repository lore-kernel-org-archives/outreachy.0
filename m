Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53FE9746C
	for <outreachy@lists.linux.dev>; Mon, 21 Aug 2023 18:41:04 +0000 (UTC)
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-99c1f6f3884so479831066b.0
        for <outreachy@lists.linux.dev>; Mon, 21 Aug 2023 11:41:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692643262; x=1693248062;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7hcH1ALy9H3tDFbJm3wOr+HufOrkenlcpo1T0f8uoLM=;
        b=sJBLFr0/OnpOJT4QOgy75T6ngXoAj+eXkHs9wUtGqMvezmhWtvvvru+0ehLxjEgC3V
         OBEW/7JZdlHYvj+u9OZ3zwwZy23ZTlV4WkrKFa2V7RHraIBA0DCAPbz7UgfQUFj0NPeD
         a7jwAxkPDfDymHeKNA5H/eTXsokM+XqGN9VO6w2qdgCOUmfZ/AFEQnONanDR4Amhi87R
         78nNGKeL+dkvJVEy9y3np4bNmp8AnU6Mi/M09JkcscTz3NB13LwNeh3OERKHjuChQW2F
         9Xwia4h1zOFT67wlzKeEiAircfQ0BwtVJaFF42S8auKY/M2xfAn0fIealZIf9LHt8saL
         x9Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692643262; x=1693248062;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7hcH1ALy9H3tDFbJm3wOr+HufOrkenlcpo1T0f8uoLM=;
        b=bfikTqR07wN9KlSYlp5l6l72XZ/tlZQSAMpfK+Vf4cjTWCm4aKhBSlMm4MmlpihBA9
         xR1ni2yY4mURrkpzHIWaD405EYWO+zQ+ua+gQnLbfGGB5PBiR2yHPjHSZ+4W3BMCw8s4
         zwSXv3htcg+6fUjEFDpWOQMnmx39C1v1T4zRlVLBesPhK8FiZg/JCvvByFctZAcaMO20
         4Vn6W8QreI6+YsEFNtIF3PQdvQqpQaosHPD19R88wN3lLOcYog8N+FlBfFcgsTO8/d5j
         4cmV/O98D5PzTXpK4vMOmykr9WboqJ9cc0kzrVeYSDhtPPi7GyMR/eRjS4qxsCcJxHtF
         6cQA==
X-Gm-Message-State: AOJu0YykJfcmDV2Syt51PZWM36HN4SGlzPSFT+gsE16WMNVszkTkjB96
	xoWjvNlGxtQ0Yfr0AfbtMlft6Q==
X-Google-Smtp-Source: AGHT+IHOXwU5zBh/FCh6APGxe0258tOTWE5VlIe7CGEdtJVLH8z/Wa01dvGw8u3T21KyspeVVm8Glg==
X-Received: by 2002:a17:906:1099:b0:99d:5adc:fdff with SMTP id u25-20020a170906109900b0099d5adcfdffmr5786196eju.45.1692643262214;
        Mon, 21 Aug 2023 11:41:02 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id l12-20020a17090612cc00b0098de7d28c34sm6956195ejb.193.2023.08.21.11.41.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Aug 2023 11:41:01 -0700 (PDT)
Message-ID: <e3d53646-9d04-d599-0670-a43f3c4a7d3e@linaro.org>
Date: Mon, 21 Aug 2023 20:41:00 +0200
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 2/2] dt-bindings: regulator: Add MAX77503 regulator
 bindings
To: Gokhan Celik <gokhan.celik@analog.com>, outreachy@lists.linux.dev
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <cover.1692634090.git.gokhan.celik@analog.com>
 <50b983f2eb74aab5947cf7721770983b51ffd949.1692634090.git.gokhan.celik@analog.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <50b983f2eb74aab5947cf7721770983b51ffd949.1692634090.git.gokhan.celik@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 21/08/2023 18:28, Gokhan Celik wrote:
> Add bindings for MAX77503 buck converter.
> 
> Signed-off-by: Gokhan Celik <gokhan.celik@analog.com>

Subject:
regulator: dt-bindings:

and drop final, redundant "bindings"

> ---
>  .../regulator/adi,max77503-regulator.yaml     | 64 +++++++++++++++++++
>  1 file changed, 64 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/regulator/adi,max77503-regulator.yaml
> 
> diff --git a/Documentation/devicetree/bindings/regulator/adi,max77503-regulator.yaml b/Documentation/devicetree/bindings/regulator/adi,max77503-regulator.yaml
> new file mode 100644
> index 000000000000..0d351225e107
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/regulator/adi,max77503-regulator.yaml

Filename like compatible.

> @@ -0,0 +1,64 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright (c) 2023 Analog Devices, Inc.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/regulator/adi,max77503-regulator.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Analog Devices MAX77503 Buck Converter
> +
> +maintainers:
> +  - Gokhan Celik <Gokhan.Celik@analog.com>
> +
> +description: Analog Devices MAX77503 Buck Converter
> +
> +properties:
> +  compatible:
> +    enum:
> +      - adi,max77503
> +
> +  reg:
> +    description: I2C address of the device
> +    items:
> +      - enum: [0x1e, 0x24, 0x37]
> +
> +  regulator:

Why having this intermediate node? It's useless for one regulator, isn't it?


> +    type: object
> +    $ref: regulator.yaml#
> +    additionalProperties: false

You should rather use unevaluatedProperties:false and drop these ":true"
properties below.

> +    description: |
> +      Buck regulator
> +
> +    properties:
> +      regulator-name: true

Drop

> +      regulator-always-on: true

Drop

> +      regulator-boot-on: true

Drop

> +      regulator-min-microvolt:
> +        minimum: 800000

maximum?

> +      regulator-max-microvolt:
> +        maximum: 5000000

minimum?

> +
> +additionalProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +
> +examples:
> +  - |
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        max77503@1e {

regulator@1e

> +            compatible = "adi,max77503";
> +            reg = <0x1e>;
> +            regulator{
> +                regulator-name = "max777503-regulator";
> +                regulator-min-microvolt = <800000>;
> +                regulator-max-microvolt = <5000000>;
> +                regulator-boot-on;
> +            };
> +        };
> +    };
> +

Best regards,
Krzysztof

