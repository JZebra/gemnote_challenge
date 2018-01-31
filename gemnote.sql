create table products (
  id serial PRIMARY KEY,
  category_ids int[],
  created_at timestamptz NOT NULL,
  updated_at timestamptz NOT NULL,
  flags integer,
  data jsonb NOT NULL
);

set timezone = 'America/Los_Angeles';

insert into products values (1, '{5}', NOW(), NOW(), 0, '{
  "name": "Kinto Carat Coffee Dripper and Pot",
  "variants": [
    {
      "name": "Kinto Carat Coffee Dripper and Pot",
      "sku": "KINTOCOF_0001",
      "descriptors": [
        "Superior stainless-steel and heat-resistant glass glass",
        "Set comes with a stainless-steel filter that allows for greater extraction of coffee oils than a paper filter, resulting in a richer and smoother coffee",
        "Pot, dripper, lid: microwave and dishwasher safe",
        "Filter, holder, silicone ring: dishwasher safe"
      ],
      "dimensions": [
        {
          "height": "8",
          "thickness": "5.5",
          "unit": "inches",
          "width": "4.4"
        }
      ],
      "images": [
        {
          "alt-text": "Kinto Carat Coffee Dripper and Pot",
          "type": "primary",
          "url": "https://gemnote-images-production.s3-us-west-2.amazonaws.com/items/default_images/000/000/610/full_size/kinto_carat_coffee_dripper_and_pot.jpg?1510489804"
        }
      ],
      "unit_price_tiers": [
        {
          "0": "64"
        },
        {
          "150": "57"
        },
        {
          "300": "51"
        },
        {
          "500": "61"
        }
      ],
      "weight": [
        {
          "amount": "24.3",
          "unit": "oz"
        }
      ]
    }
  ]
}'
);

insert into products values (2, '{6}', NOW(), NOW(), 0, '{
  "name": "Patagonia Hybrid Jacket",
  "variants": [
    {
      "name": "Patagonia Hybrid Jacket - Black",
      "color": "black",
      "descriptors": [
        "93% polyester/7% spandex stretch woven with fleece grid backer",
        "3-layer Polartec Windbloc stretch-woven polyester soft-shell with a DWR (durable water repellent) finish",
        "Stretchy, breathable, double-weave soft-shell fabric on side panels, underarms and cuffs",
        "High, harness- and pack-compatible handwarmer pockets and one interior chest pocket have brushed tricot lining"
      ],
      "images": [
        {
          "alt-text": "Patagonia Hybrid Jacket - Black",
          "type": "primary",
          "url": "https://gemnote-images-production.s3-us-west-2.amazonaws.com/images/images/000/000/899/full_size/patagonia_women_s_adze_hybrid_jacket___black.jpg?1510663389"
        }
      ],
      "sku": "PATAJACK_0001",
      "unit_price_tiers": [
        {
          "0": "189"
        },
        {
          "150": "180"
        },
        {
          "300": "171"
        },
        {
          "500": "160"
        }
      ]
    },
    {
      "name": "Patagonia Hybrid Jacket - White",
      "color": "white",
      "descriptors": [
        "93% polyester/7% spandex stretch woven with fleece grid backer",
        "3-layer Polartec Windbloc stretch-woven polyester soft-shell with a DWR (durable water repellent) finish",
        "Stretchy, breathable, double-weave soft-shell fabric on side panels, underarms and cuffs",
        "High, harness- and pack-compatible handwarmer pockets and one interior chest pocket have brushed tricot lining"
      ],
      "images": [
        {
          "alt-text": "Patagonia Hybrid Jacket - White",
          "type": "primary",
          "url": "https://gemnote-images-production.s3-us-west-2.amazonaws.com/images/images/000/000/899/full_size/patagonia_women_s_adze_hybrid_jacket___black.jpg?1510663389"
        }
      ],
      "sku": "PATAJACK_0002",
      "unit_price_tiers": [
        {
          "0": "189"
        },
        {
          "150": "180"
        },
        {
          "300": "171"
        },
        {
          "500": "160"
        }
      ]
    }
  ]
}'
);

insert into products values (3, '{2}', NOW(), NOW(), 0, '{
  "name": "Dick Taylor Bars",
  "variants": [
    {
      "name": "Dick Taylor Bars - Brown butter with nibs + sea salt",
      "sku": "DICKTAYB_0001",
      "descriptors": [
        "Using the finest cacao, and a modern take on traditional European technique, we are able to fully realize the potential of the beans we source.",
        "All of our chocolate is carefully crafted from the bean in our small factory in Northern California."
      ],
      "images": [
        {
          "alt-text": "Dick Taylor Bars - Brown butter with nibs + sea salt",
          "type": "primary",
          "url": "https://gemnote-images-production.s3-us-west-2.amazonaws.com/images/images/000/001/717/full_size/dick_taylor_bars_with_inclusions___brown_butter_with_nibs___sea_salt.jpg?1510664223"
        }
      ],
      "unit_price_tiers": [
        {
          "0": "8.50"
        },
        {
          "150": "7.8"
        },
        {
          "300": "7"
        },
        {
          "500": "6.4"
        }
      ],
      "weight": [
        {
          "amount": "2",
          "unit": "oz"
        }
      ]
    },
    {
      "name": "Dick Taylor Bars - Fleur De Sel",
      "sku": "DICKTAYB_0002",
      "descriptors": [
        "Using the finest cacao, and a modern take on traditional European technique, we are able to fully realize the potential of the beans we source.",
        "All of our chocolate is carefully crafted from the bean in our small factory in Northern California."
      ],
      "images": [
        {
          "alt-text": "Dick Taylor Bars - Fleur De Sel",
          "type": "primary",
          "url": "https://gemnote-images-production.s3-us-west-2.amazonaws.com/images/images/000/001/716/full_size/dick_taylor_bars_with_inclusions___fleur_de_sel.jpg?1510664222"
        }
      ],
      "unit_price_tiers": [
        {
          "0": "8.50"
        },
        {
          "150": "7.8"
        },
        {
          "300": "7"
        },
        {
          "500": "6.4"
        }
      ],
      "weight": [
        {
          "amount": "2",
          "unit": "oz"
        }
      ]
    },
    {
      "name": "Dick Taylor Bars - Black Fig",
      "sku": "DICKTAYB_0003",
      "descriptors": [
        "Using the finest cacao, and a modern take on traditional European technique, we are able to fully realize the potential of the beans we source.",
        "All of our chocolate is carefully crafted from the bean in our small factory in Northern California."
      ],
      "images": [
        {
          "alt-text": "Dick Taylor Bars - Black Fig",
          "type": "primary",
          "url": "https://gemnote-images-production.s3-us-west-2.amazonaws.com/images/images/000/001/715/full_size/dick_taylor_bars_with_inclusions___black_fig.jpg?1510664221"
        }
      ],
      "unit_price_tiers": [
        {
          "0": "8.50"
        },
        {
          "150": "7.8"
        },
        {
          "300": "7"
        },
        {
          "500": "6.4"
        }
      ],
      "weight": [
        {
          "amount": "2",
          "unit": "oz"
        }
      ]
    },
    {
      "name": "Dick Taylor Bars - Maple Coconut",
      "sku": "DICKTAYB_0004",
      "descriptors": [
        "Using the finest cacao, and a modern take on traditional European technique, we are able to fully realize the potential of the beans we source.",
        "All of our chocolate is carefully crafted from the bean in our small factory in Northern California."
      ],
      "images": [
        {
          "alt-text": "Dick Taylor Bars - Maple Coconut",
          "type": "primary",
          "url": "https://gemnote-images-production.s3-us-west-2.amazonaws.com/images/images/000/001/714/full_size/dick_taylor_bars_with_inclusions___maple_coconut.jpg?1510664221"
        }
      ],
      "unit_price_tiers": [
        {
          "0": "8.50"
        },
        {
          "150": "7.8"
        },
        {
          "300": "7"
        },
        {
          "500": "6.4"
        }
      ],
      "weight": [
        {
          "amount": "2",
          "unit": "oz"
        }
      ]
    }
  ]
}'
);
